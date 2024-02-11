#include "engine.h"
#include <iostream>
//sdl imports
#include "SDL.h"
#include "SDL_opengl.h"
//imgui imports
#include "imgui.h"
#include "imgui_impl_sdl2.h"
#include "imgui_impl_opengl3.h"






//constructor 
Engine::Engine() : window(nullptr) {}

//destructor
Engine::~Engine(){
    Engine::shootdown();
}

void Engine::inicicalizate(){
        
        //creating the sdl window 
        SDL_Window* window = SDL_CreateWindow("engine",SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 800, 600, SDL_WINDOW_SHOWN);

        
        // Setup Dear ImGui context

    if(!window){
        std::cout<<"error al crear la ventana"<<std::endl;
        SDL_Quit();
    }

         SDL_Event evento;
    int ejecutando = 1;
    while (ejecutando) {
        // Manejar eventos
     while (SDL_PollEvent(&evento)) {



           if (evento.type == SDL_QUIT) {
    
               ejecutando = 0;
               break;
           }
           // Manejar otros tipos de eventos aquí
       }

    }
}


void Engine::shootdown(){
    SDL_DestroyWindow(window);
    SDL_Quit();
}