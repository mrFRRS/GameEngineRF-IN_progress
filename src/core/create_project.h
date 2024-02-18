

#ifndef CREATE_PROJECT_H
#define CREATE_PROJECT_H
#include <SDL.h>
#include "SDL_opengl.h"
class create_project
{
private:
    SDL_GLContext* gl_Contenxt ;
    SDL_Window* window;
public:
    create_project();
    ~create_project();
    void create_project_window();
    void shootdown();
};

#endif
