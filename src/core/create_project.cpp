#include "create_project.h"
#include <iostream>
#include <stdio.h>

//gtk imports
#include "gtkmm.h"


//inicializate
create_project::create_project(){}
//destructor
create_project::~create_project(){}


void create_project::create_project_window(){
        set_title("Mi Aplicación");
    set_default_size(600,600);

   
    show_all(); 
}

// void create_project::on_create_project_clicked() {
//     // Lógica para manejar el clic en el botón de crear proyecto aquí
//     label_status.set_text("Proyecto creado!");
// }

