#include "engine.h"
#include "create_project.h"
#include <iostream>
#include <gtkmm.h>
#include <filesystem>
#include "dirent.h"

//inicializate
create_project::create_project()
:
//box
//main_box
vbox1(Gtk::Orientation::VERTICAL),

//page_one
vbox2_main(Gtk::Orientation::HORIZONTAL),
vbox2_UX(Gtk::Orientation::VERTICAL,10),
vbox2_buttons(Gtk::Orientation::HORIZONTAL, 10),

//page_two
vbox3_main(Gtk::Orientation::VERTICAL, 10),
vbox3_scroll(Gtk::Orientation::VERTICAL),
//page_three
vbox4(Gtk::Orientation::VERTICAL),
//labels
project_name_engine_label("please write a proyect name engine"),

create_project_label("Create project"),
open_engine_label("Open project"),
delete_project_label("Delete project"),
//buttons
create_project_button("create"),
cancel_project_button("cancel"),
button_tab_1("create"),
button_tab_2("open"),
button_tab_3("delete"),

//images
image("assets/images/violet.jpg")
{ 
  //initial settings 
  set_title("menu");
  set_default_size(600,450);


  set_child(vbox1);

  std::string cssFilePath = "src/gtk/style/style1.css";
  Glib::RefPtr<Gtk::CssProvider> provider = Gtk::CssProvider::create();
  provider->load_from_path(cssFilePath);

//notebook

  vbox1.append(notebook);
  vbox1.get_style_context()->add_provider(provider, GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);
  vbox1.get_style_context()->add_class("my-window");

  notebook.set_tab_pos(Gtk::PositionType::TOP);
  notebook.set_hexpand(true);
  notebook.set_vexpand(true);
  notebook.get_style_context()->add_provider(provider, GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);
  notebook.get_style_context()->add_class("vbox-main");
  notebook.append_page(vbox2_main, "create");
  notebook.append_page(vbox3_main, "open");
  notebook.append_page(vbox4, "delete");

  notebook.signal_switch_page().connect(sigc::mem_fun(*this, &create_project::open_project_engine));

  //vbox2_main
  vbox2_main.append(vbox2_UX);
  vbox2_main.set_halign(Gtk::Align::END);
      //vbox2_UX

  vbox2_UX.set_halign(Gtk::Align::END);
  vbox2_UX.append(create_project_label);
  vbox2_UX.append(project_name_engine_label);
  vbox2_UX.append(get_project_name_engine);
  vbox2_UX.append(vbox2_buttons);
  
  
      //labels
  create_project_label.set_margin_top(20);
  create_project_label.set_margin_end(10);
  create_project_label.set_margin_bottom(20);
  create_project_label.set_halign(Gtk::Align::END);
  create_project_label.get_style_context()->add_provider(provider, GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);
  create_project_label.get_style_context()->add_class("text-title-page");

  project_name_engine_label.set_xalign(80);
  project_name_engine_label.set_margin_end(10);
  project_name_engine_label.get_style_context()->add_provider(provider, GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);
  project_name_engine_label.get_style_context()->add_class("text-label");

  title_engine_label.get_style_context()->add_provider(provider, GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);
  title_engine_label.get_style_context()->add_class("text-title");
      
      //entrys
  get_project_name_engine.set_margin_end(10);
  get_project_name_engine.set_max_length(50);
  get_project_name_engine.get_style_context()->add_provider(provider, GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);
  get_project_name_engine.get_style_context()->add_class("my-entry");
  
      
      //buttons
  vbox2_buttons.set_margin_end(10);
  vbox2_buttons.append(cancel_project_button);
  vbox2_buttons.append(create_project_button);
  
  create_project_button.set_size_request(100,50);
  create_project_button.get_style_context()->add_provider(provider, GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);
  create_project_button.get_style_context()->add_class("button-style");

  cancel_project_button.set_size_request(100,50);
  cancel_project_button.get_style_context()->add_provider(provider, GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);
  cancel_project_button.get_style_context()->add_class("button-style");

      //butto handle
  create_project_button.signal_clicked().connect(sigc::mem_fun(*this, &create_project::create_project_engine));
  cancel_project_button.signal_clicked().connect(sigc::mem_fun(*this, &create_project::cancel));
  


  //second page 
  vbox3_main.append(scrolled_window);
  scrolled_window.set_child(tree_view);
  scrolled_window.set_policy(Gtk::PolicyType::AUTOMATIC, Gtk::PolicyType::AUTOMATIC);
  scrolled_window.set_expand();

  //Create the Tree model:
  m_refTreeModel = Gtk::ListStore::create(m_Columns);
  tree_view.set_model(m_refTreeModel);

  tree_view.append_column("name",m_Columns.m_col_name);
tree_view.signal_row_activated().connect(sigc::mem_fun(*this,
              &create_project::on_treeview_row_activated) );



}

//destructor
create_project::~create_project(){}



void create_project::create_project_engine(){
  struct stat info;  
  std::string name_project = get_project_name_engine.get_text();
  const char*  home_dir = getenv("HOME");
  std::string target_directory = std::string(home_dir) + "/proyects_FR/" + std::string(name_project);
  if(name_project.empty()){
    std::cerr<<"error creating the project, the project is empty"<<std::endl;
    return;
  }
 if (!std::filesystem::exists(target_directory)) {
    if (std::filesystem::create_directory(target_directory)) {
        std::cout << "Directory created successfully: " << target_directory << std::endl;
        if(SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER | SDL_INIT_GAMECONTROLLER) != 0){
        std::cerr<<"no se pudo inicializar Sdl:"<<SDL_GetError()<<std::endl;
      }
        pid_t pid = fork();
        
        if(pid == 0 ){

        Engine _engine;
        _engine.inicicalizate();
        _engine.shootdown();

        }

       set_visible(false);

    // Resto de la inicialización de SDL
    } else {
        std::cerr << "Error creating the project" << std::endl;
    }

  }else{
      std::cout<<"project already exists"<<std::endl;
  }
}

void create_project::open_project_engine(Gtk::Widget* page, guint page_num) {
    const char* home_dir = getenv("HOME");
    std::string target_directory = std::string(home_dir) + "/proyects_FR";

 if (page_num == 1) {
        std::cout << "open project engine working well" << std::endl;
        DIR* dir;
        struct dirent *entry;
        dir = opendir(target_directory.c_str());
        if (dir == nullptr) {
            std::cerr << "error opening the directory" << std::endl;
            return;
        } 


        while ((entry = readdir(dir)) != nullptr) {
            std::string nombre_archivo = entry->d_name;

            if (nombre_archivo != "." && nombre_archivo != "..") {
                auto row = *(m_refTreeModel->append());
                row[m_Columns.m_col_name] = nombre_archivo;

            }

        }

        closedir(dir); // Cerrar el directorio después de que el bucle haya terminado.
    }
}

void create_project::on_treeview_row_activated(const Gtk::TreeModel::Path& path, Gtk::TreeViewColumn* column){
    const auto iter = m_refTreeModel->get_iter(path);
    if(SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER | SDL_INIT_GAMECONTROLLER) != 0){
        std::cerr<<"no se pudo inicializar Sdl:"<<SDL_GetError()<<std::endl;
    }

  if(iter)
  {
    const auto row = *iter;
    std::cout << "Row activated: ID=" << row[m_Columns.m_col_name] << ", Name="
        << row[m_Columns.m_col_name] << std::endl;
      
        if(SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER | SDL_INIT_GAMECONTROLLER) != 0){
        std::cerr<<"no se pudo inicializar Sdl:"<<SDL_GetError()<<std::endl;
      }
        pid_t pid = fork();
        
        if(pid == 0 ){

        Engine _engine;
        _engine.inicicalizate();
        _engine.shootdown();

        }

       set_visible(false);
  }
}

void create_project::cancel(){
  set_visible(false);
}