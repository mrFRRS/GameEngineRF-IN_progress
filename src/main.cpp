
#include <iostream>
#include <SDL2/SDL.h>
#include "core/engine.h"
#include "imgui.h"


int main(int, char**) {
    //creacmos el constructor
    Engine engine;
// Setup Dear ImGui context

    if(SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER | SDL_INIT_GAMECONTROLLER) != 0){
        std::cerr<<"no se pudo inicializar Sdl:"<<std::endl;
        return -1;
    }
    //inicialitate the window and opengl renderer
    engine.inicicalizate();


     //eliminamos el constructor
    engine.shootdown();
    return 0;

}
