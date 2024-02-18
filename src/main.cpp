
#include <iostream>
#include <SDL2/SDL.h>
#include "core/engine.h"
#include "filesystem"
#include "fstream"
#include <cstdlib>
#include "sys/stat.h"

//verifing if path exists, if not exists, create a new one
bool not_videoGameCreated(){
    const char* homedir = getenv("HOME");
    std::string directoryToCreate = std::string(homedir) + "/proyects_FR";
    std::string directoryGamesCreated = directoryToCreate + '/';

    struct stat info;
    if(homedir != nullptr){
        if(stat(directoryToCreate.c_str(), &info) != 0){
             //el direcotrio no existe, entonces se crea un directorio para los projectos
             if(mkdir(directoryToCreate.c_str(), 0777) !=0 ){
                std::cout<<"se creo correctamente el direcotio en la ruta"<< directoryToCreate<<"\n"<< std::endl;
                return true;
             }else{
                std::cerr << "error creando el direcotrio de los proyectos";
                return false;
             }
        }else{
            return true;
        }
    }else {
        std::cerr << "No se pudo obtener el directorio home del usuario.\n";
        return false;
    }
    return true;
}


int main(int, char**) {
    //creacmos el constructor
    Engine engine;
// Setup Dear ImGui context

    if(SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER | SDL_INIT_GAMECONTROLLER) != 0){
        std::cerr<<"no se pudo inicializar Sdl:"<<std::endl;
        return -1;
    }
    not_videoGameCreated();
    engine.inicicalizate();
    engine.shootdown();
    //inicialitate the window and opengl renderer
     //eliminamos el constructor
    return 0;

}
