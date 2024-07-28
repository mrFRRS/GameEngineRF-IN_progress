#include "gtkmm.h"
#include "principal_page.h"

principal_page::principal_page(const std::string& project_name)
:main_box(Gtk::Orientation::VERTICAL), 
label("Project: " + project_name)

{
    //basic setting for the page
    set_title("Project Page");
    set_default_size(800, 900);
    set_child(main_box);
    
    main_box.append(label);
}

principal_page::~principal_page(){}