#ifndef CREATE_PROJECT_H
#define CREATE_PROJECT_H
#include "gtkmm.h"
#include "gtkmm/button.h"
#include "gtkmm/window.h"
#include "editor/ui/principal_page/principal_page.h"



class create_project : public Gtk::Window
{
protected:
    void switch_current_page(Gtk::Widget* page, guint page_num);
    void create_project_name();
    void list_projects();
    void row_select(const Gtk::TreeModel::Path& path, Gtk::TreeViewColumn* column);
    void on_child_hide(std::shared_ptr<Gtk::Window> window);
    void quit_page();

    //tree model
    class ModelColumns : public Gtk::TreeModel::ColumnRecord
    {
    public:
        ModelColumns()
        {
            add(m_col_id);
            add(m_col_name);
            add(m_col_creation_time);
        }

        Gtk::TreeModelColumn<int> m_col_id;
        Gtk::TreeModelColumn<Glib::ustring> m_col_name;
        Gtk::TreeModelColumn<Glib::ustring> m_col_creation_time;
    };


    //widgets
    ModelColumns m_columns;

    Gtk::Entry
    entry_project_name;
    
    Gtk::Label
    label_GameEngineFR,
    label_create_project,
    label_quit_create_project;
    
    Gtk::Button 
    create_b,
    cancel_b;    
    Gtk::Box 
    main_box,

    //PAGINA PARA CREAR EL PROYECTO
    page1_box,
    buttons_box,

    //PAGE TO SELECT THE DESIRE PROYECT
    page2_box;
    
    Gtk::ScrolledWindow scrolled_window;
    Gtk::TreeView tree_view;
    Glib::RefPtr<Gtk::ListStore> m_refTreeModel;
    Glib::RefPtr<Gtk::TreeSelection> m_refTreeSelection;
    Gtk::Notebook notebook;

    std::unique_ptr<principal_page> principal_engien_window;


public:
    create_project();
    virtual ~create_project();


};

#endif

