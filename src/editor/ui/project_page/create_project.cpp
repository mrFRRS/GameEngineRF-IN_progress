#include "create_project.h"  
#include "editor/ui/principal_page/principal_page.h"
#include "gtkmm.h"
#include <iostream>
#include <cstdlib>
#include <sys/stat.h>
#include <dirent.h>
#include <ctime>
#include <memory>

create_project::create_project():
//main box
main_box(Gtk::Orientation::VERTICAL),
//mainbox from page1 create project
page1_box(Gtk::Orientation::VERTICAL),
buttons_box(Gtk::Orientation::HORIZONTAL),

//labels
label_GameEngineFR("GameEngineFR"),
label_create_project("create project"),
label_quit_create_project("quit"),

//buttons
create_b("create"),
cancel_b("quit")
{
    //basic setting for the page
    set_title("projects managment");
    set_default_size(600,600);

    //principal Box
    set_child(main_box);

    //notebook settings
    main_box.append(notebook);
    notebook.set_margin(10);
    notebook.set_expand(true);
    notebook.append_page(page1_box,"create project");
    notebook.append_page(page2_box,"select project");
    notebook.signal_switch_page().
    connect(sigc::mem_fun(*this, &create_project::switch_current_page));

    //page 1 configuration
    page1_box.append(label_GameEngineFR);
    page1_box.append(label_create_project);
    page1_box.append(entry_project_name);
    page1_box.append(buttons_box);

        //buttons box configuration
        buttons_box.set_margin(10);
        buttons_box.append(create_b);
        buttons_box.append(cancel_b);
        
        //buttons settings
        create_b.signal_clicked().connect(sigc::mem_fun(*this, &create_project::create_project_name));
        cancel_b.signal_clicked().connect(sigc::mem_fun(*this, &create_project::quit_page));


    //page 2 configuration
    page2_box.append(scrolled_window);

    //scrolled window configuration
    scrolled_window.set_child(tree_view);
    scrolled_window.set_policy(Gtk::PolicyType::AUTOMATIC, Gtk::PolicyType::AUTOMATIC);
    scrolled_window.set_expand(true);

    //tree model
    m_refTreeModel = Gtk::ListStore::create(m_columns);
    tree_view.set_model(m_refTreeModel);

        // Add columns to the TreeView:
    tree_view.append_column("ID", m_columns.m_col_id);
    tree_view.append_column("Name", m_columns.m_col_name);
    tree_view.append_column("date",m_columns.m_col_creation_time);

    tree_view.signal_row_activated().connect(sigc::mem_fun(*this, &create_project::row_select));
}

create_project::~create_project(){}

void create_project::switch_current_page(Gtk::Widget*, guint page_num){
    notebook.get_current_page();
    if (page_num ==1) {
        list_projects();
    }
}


void create_project::create_project_name(){
    const char* homedir = getenv("HOME");
    std::string directory = std::string(homedir) + "/proyects_FR";
    std::string entry_name_project = entry_project_name.get_text();
    
    if (entry_name_project.empty()) {
        std::cerr << "El nombre del proyecto no puede estar vacío.\n";
        return;
    }

    std::string project_directory = directory + "/" + entry_name_project;
    struct stat info;
    
    if(stat(project_directory.c_str(), &info) == 0){
        std::cerr<<"el proyecto ya existe";
        return;
    
        
    }   
    if (mkdir(project_directory.c_str(), 0777) != 0) {
        std::cerr << "Error creando el directorio del proyecto.\n";
    } else {
        std::cout << "Se creó correctamente el proyecto en la ruta: " << project_directory << "\n";
        list_projects();
    }
}

void create_project::list_projects() {
    const char* homedir = getenv("HOME");
    if (!homedir) {
        std::cerr << "Error obteniendo el directorio HOME.\n";
        return;
    }

    std::string directory = std::string(homedir) + "/proyects_FR";
    DIR* dir = opendir(directory.c_str());

    if (!dir) {
        std::cerr << "Error abriendo el directorio de proyectos: " << directory << "\n";
        return;
    }

    struct dirent* entry;
    m_refTreeModel->clear();
    int id = 1;

    while ((entry = readdir(dir)) != nullptr) {
        // Ignorar las entradas "." y ".."
        if (entry->d_type == DT_DIR && entry->d_name[0] != '.') {
            std::string project_path = directory + "/" + entry->d_name;
            struct stat info;

            if (stat(project_path.c_str(), &info) == 0) {
                // Convertir la hora de creación en un formato legible
                std::time_t creation_time = info.st_ctime;
                char buffer[100];
                std::strftime(buffer, sizeof(buffer), "%Y-%m-%d %H:%M:%S", std::localtime(&creation_time));

                Gtk::TreeModel::Row row = *(m_refTreeModel->append());
                row[m_columns.m_col_id] = id++;
                row[m_columns.m_col_name] = entry->d_name;
                row[m_columns.m_col_creation_time] = buffer;
            } else {
                std::cerr << "Error obteniendo información del archivo: " << project_path << "\n";
            }
        }
    }

    closedir(dir);
}

void create_project::row_select(const Gtk::TreeModel::Path& path, Gtk::TreeViewColumn* column) {
    // Obtener la fila seleccionada desde el modelo
    Gtk::TreeModel::Row row = *(m_refTreeModel->get_iter(path));
    Glib::ustring project_name = row[m_columns.m_col_name];
    std::string project_name_str = project_name.raw();


    std::cout << "Nombre del proyecto: " << project_name_str << std::endl;

    auto app = Gtk::Application::create("org.gtkmm.example");


    // Crear una nueva página de proyecto y mostrarla
    auto new_page = Gtk::make_managed<principal_page>(app, project_name_str);
    app->add_window(*new_page);
    new_page->show();
}

void create_project::on_child_hide(std::shared_ptr<Gtk::Window> window){
}

void create_project::quit_page(){
    set_visible(false);
}


// void create_project::on_project_selected() {
//     auto selection = tree_view.get_selection();
//     Gtk::TreeModel::iterator iter = selection->get_selected();
//     if (iter) {
//         Gtk::TreeModel::Row row = *iter;
//         Glib::ustring project_name = row[m_columns.m_col_name];

//         // Ocultar la ventana actual
//         hide();

//         // Crear y mostrar la nueva ventana con el nombre del proyecto
//         auto project_window = new project_window(project_name);
//         project_window->set_visible(true);
//     }
// }