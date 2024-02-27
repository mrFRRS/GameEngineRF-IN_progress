

#ifndef CREATE_PROJECT_H
#define CREATE_PROJECT_H
// #include "gtkmm.h"
#include "gtkmm.h"
#include "gtkmm/window.h"
#include "gtkmm/button.h"
// class create_project : public Gtk::Window
class create_project : public Gtk::Window 
{
public:
    create_project();
    ~create_project();
protected:
//signal handlers
void on_button_clicked();
//member widgets
Gtk::Button m_button;
};

#endif
