

#ifndef CREATE_PROJECT_H
#define CREATE_PROJECT_H
#include <gtkmm.h>
class create_project : public Gtk::Window
{
private:
    Gtk::Button button_create_project;
    Gtk::Label label_status;
    //void on_create_project_clicked();
public:
    create_project();
    virtual ~create_project();
    void create_project_window();
    
};

#endif
