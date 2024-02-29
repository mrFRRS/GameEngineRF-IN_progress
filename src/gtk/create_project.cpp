#include <iostream>
#include <stdio.h>
#include <iostream>
#include <stdio.h>
//header import 
#include "create_project.h"
#include "filesystem"
#include "fstream"
#include "sys/stat.h"
#include "dirent.h"
//inicializate
create_project::create_project()
:
vbox2(Gtk::Orientation::VERTICAL, 10),
vbox1(Gtk::Orientation::VERTICAL, 10),
vbox3_buttons(Gtk::Orientation::HORIZONTAL, 10),
vbox4_create_button_label(Gtk::Orientation::HORIZONTAL,5),
title_engine("FR engine"),
project_name_engine("please write a proyect name engine"),
create_project_button("create"),
cancel_project_button("cancel")
{  

  set_child(vbox1);
  //set name and default -size_of the window
  set_title("Menu Engine");
  set_default_size(600, 500);
  //end

  //halign bvox and title
  vbox1.set_halign(Gtk::Align::END);
  title_engine.set_halign(Gtk::Align::END);
  title_engine.set_margin(20);
  vbox1.append(title_engine);

  //halign project_name_engine, creating buttons and adding into vbox2

  vbox2.set_halign(Gtk::Align::END);
  //label text
  project_name_engine.set_halign(Gtk::Align::END);
  project_name_engine.set_margin_end(20);
  //entry
  get_project_name_engine.set_max_length(30);
  get_project_name_engine.set_margin_end(20);
  //adding label and entry into vbox2
  vbox2.append(project_name_engine);
  vbox2.append(get_project_name_engine);
  //end
  vbox3_buttons.append(cancel_project_button);
  vbox3_buttons.append(create_project_button);
  //end
  create_project_button.set_size_request(100,50);
  create_project_button.signal_clicked().connect(sigc::mem_fun(*this, &create_project::create_project_engine));
  //button2: label and size
  // cancel_project_button.set_child(vbox5_cancel_button_label);
  cancel_project_button.set_size_request(100,50);
  //end
  // adding elements into containers
  vbox1.append(vbox2);
  vbox1.append(vbox3_buttons);
  // vbox2.append(project_name_engine);
}
  //adding label in box
  // vbox4_create_button_label.append(create_project_label_button);
  // vbox5_cancel_button_label.append(cancel_project_label_button);
  //button 1: label and size
  // create_project_button.set_child(vbox4_create_button_label);


//destructor
create_project::~create_project(){}

void create_project::create_project_engine(){
  struct stat info;  
  std::string name_project = get_project_name_engine.get_text();
  const char*  home_dir = getenv("HOME");
  std::string target_directory = std::string(home_dir) + "/proyects_FR/" + std::string(name_project);
  if(name_project.empty()){
    std::cerr<<"error creating the project, the project is empty"<<std::endl;
    return;
  }
 if (!std::filesystem::exists(target_directory)) {
    if (std::filesystem::create_directory(target_directory)) {
        std::cout << "Directory created successfully: " << target_directory << std::endl;
    } else {
        std::cerr << "Error creating directory" << std::endl;
    }
}
}