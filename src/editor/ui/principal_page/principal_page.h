#ifndef PRINCIPAL_PAGE_H
#define PRINCIPAL_PAGE_H

#include "gtkmm.h"
#include "gtkmm/window.h"

class principal_page : public Gtk::Window 
{
protected:
    // Signal handlers for toolbar
    void on_action_file_quit();
    void on_action_others();
    // void on_action_toggle();
    
    // Window widgets
    Gtk::Box main_box;
    Gtk::Label label;

    // RefPtr
    Glib::RefPtr<Gtk::Builder> m_ref_builder;
    Glib::RefPtr<Gio::SimpleActionGroup> m_ref_action_group;
    Glib::RefPtr<Gio::SimpleAction> m_ref_action_rain;

public:
    principal_page(const Glib::RefPtr<Gtk::Application>& app, const std::string& project_name);
    virtual ~principal_page();
};

#endif // PRINCIPAL_PAGE_H