

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
void cancel();


//member widgets
Gtk::Button 
//buttons create_project
create_project_button, cancel_project_button, 
//buttons notebook
button_tab_1, button_tab_2, button_tab_3;


Gtk::Label 
//label in create_project_engine
title_engine_label, project_name_engine_label, 
//label_text_notebook
open_engine_label, delete_project_label, create_project_label;//create_project_label_button,cancel_project_label_button;

Gtk::Image image;

Gtk::Box 
 vbox1,
 vbox2_main, vbox2_UX, vbox2_buttons, vbox2_image, 
 vbox3, 
 vbox4;
Gtk::Entry get_project_name_engine;
Gtk::Notebook notebook;
// Gtk::CheckButton c_button
};

#endif
