

#ifndef CREATE_PROJECT_H
#define CREATE_PROJECT_H
// #include "gtkmm.h"
#include "gtkmm.h"
#include "gtkmm/box.h"
#include "gtkmm/window.h"
#include "gtkmm/button.h"
#include <gtkmm/checkbutton.h>
// class create_project : public Gtk::Window
class create_project : public Gtk::Window 
{
public:
    create_project();
    ~create_project();
protected:
//signal handlers
void create_project_engine();
void open_project_engine();
void delete_project_engine();

//member widgets
Gtk::Button create_project_button, cancel_project_button;
 Gtk::Label title_engine, project_name_engine;//create_project_label_button,cancel_project_label_button;
Gtk::Box vbox1, vbox2, vbox3_buttons, vbox4_create_button_label,vbox5_cancel_button_label;
Gtk::Entry get_project_name_engine;
// Gtk::CheckButton c_button
};

#endif
