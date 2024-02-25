

#ifndef CREATE_PROJECT_H
#define CREATE_PROJECT_H
// #include "gtkmm.h"
#include "SDL.h"

// class create_project : public Gtk::Window
class create_project
{
private:
    SDL_GLContext* gl_Contenxt;
    SDL_Window* window;
//     Gtk::Button button_create_project;
//     Gtk::Label label_status;
    //void on_create_project_clicked();
public:
    create_project();
    void create_project_window();
    void shootdown();
    ~create_project();

};
#endif
