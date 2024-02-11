// src/core/engine.h

// Engine.h

#ifndef ENGINE_H
#include <SDL.h>
#include "SDL_opengl.h"
class Engine
{
private:
    SDL_GLContext* glContenxt ;
    SDL_Window* window;
public:
    Engine();
    ~Engine();
    void inicicalizate();
    void shootdown();
};
#endif