//paths
#include "gtk/create_project.h"
#include "core/engine.h"
//sdl including
#include <SDL2/SDL.h>
//file handle
#include <iostream>
#include "filesystem"
#include "fstream"
#include <cstdlib>
#include "sys/stat.h"
#include "dirent.h"
#include "gtkmm.h"

bool isDirectoryEmpty(const std::string& path) {
    DIR* dir = opendir(path.c_str());
    if (dir == nullptr) {
        std::cerr << "Error abriendo el directorio: " << path << "\n";
        return true;  // Tratamos un error como si el directorio estuviera vacío
    }

    struct dirent* entry;
    while ((entry = readdir(dir)) != nullptr) {
        // Ignorar los directorios "." y ".."
        if (std::string(entry->d_name) != "." && std::string(entry->d_name) != "..") {
            closedir(dir);
            return false;  // El directorio no está vacío
        }
    }

    closedir(dir);
     return true;  // El directorio está vacío
}

    //verifing if path exists, if not exists, create a new one
bool not_videoGameCreated(){
    const char* homedir = getenv("HOME");
    std::string directoryToCreate = std::string(homedir) + "/proyects_FR";

    struct stat info;
    if(homedir != nullptr){
        if(stat(directoryToCreate.c_str(), &info) != 0){
            //el direcotrio no existe, entonces se crea un directorio para los projectos
            if(mkdir(directoryToCreate.c_str(), 0777) !=0 ){
                std::cerr << "error creando el direcotrio de los proyectos";
                return false;
            }else{
                std::cout<<"se creo correctamente el direcotio en la ruta"<< directoryToCreate<<"\n"<< std::endl;
                return true;
            }
        }else if (isDirectoryEmpty(directoryToCreate)) {
            std::cout << "El directorio está vacío.\n";
            return true;  // El directorio está vacío y necesita ser inicializado
        } else {
            std::cout << "El directorio no está vacío.\n";
        }
    } else {
        std::cerr << "./No se pudo obtener el directorio home del usuario.\n";
        return false;
    }

    return false;
}


int main(int argc, char *argv[]) {
        

    if(SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER | SDL_INIT_GAMECONTROLLER) != 0){
        std::cerr<<"no se pudo inicializar Sdl:"<<SDL_GetError()<<std::endl;
        return -1;
    }

    if (not_videoGameCreated()) {
        // create_project _create_project;
        // auto app = Gtk::Application::create("org.gtkmm.examples.base");
        //  return app->make_window_and_run<create_project>(argc, argv);
        auto app = Gtk::Application::create("org.fr_engine.base");
        create_project _create_project;
        return app->make_window_and_run<create_project>(argc,argv);         
    } else{
        Engine _engine;
        _engine.inicicalizate();
        _engine.shootdown();
    }
        
    SDL_Quit();
    return 0;
}
