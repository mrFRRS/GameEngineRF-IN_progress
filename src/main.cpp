// #include <SDL2/SDL.h>
// #include <stdio.h>
// #include "core/engine.h"
// int main() {
//     // Inicializar SDL
//     if (SDL_Init(SDL_INIT_VIDEO) < 0) {
//         fprintf(stderr, "Error al inicializar SDL: %s\n", SDL_GetError());
//         return 1;
//     }
    
//     // Crear ventana
//     SDL_Window* ventana = SDL_CreateWindow("Mi Ventana", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 800, 600, SDL_WINDOW_SHOWN);
//     if (!ventana) {
//         fprintf(stderr, "Error al crear la ventana: %s\n", SDL_GetError());
//         SDL_Quit();  // Asegúrate de cerrar SDL adecuadamente en caso de error
//         return 1;
//     }
    
//     // Bucle principal
//     SDL_Event evento;
//     int ejecutando = 1;
//     while (ejecutando) {
//         // Manejar eventos
//         while (SDL_PollEvent(&evento)) {
//             if (evento.type == SDL_QUIT) {
//                 ejecutando = 0;
//                 break;
//             }
//             // Manejar otros tipos de eventos aquí
//         }

//         // Lógica del juego y renderizado aquí
//     }

//     // Liberar recursos y cerrar SDL
//     SDL_DestroyWindow(ventana);
//     SDL_Quit();

//     return 0;
// }
#include <iostream>
#include <SDL2/SDL.h>
#include "core/engine.h"
#include "imgui.h"



int main() {
    //creacmos el constructor
    Engine engine;
// Setup Dear ImGui context

    if(SDL_Init(SDL_INIT_VIDEO) < 0){
        std::cerr<<"no se pudo inicializar Sdl:"<<std::endl;
        return -1;
    }
    //inicialitate the window and opengl renderer
    engine.inicicalizate();


     //eliminamos el constructor
    engine.shootdown();
    return 0;

}
