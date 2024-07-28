
#ifndef PRINCIPAL_PAGE_H
#define PRINCIPAL_PAGE_H


#include "gtkmm.h"
#include "gtkmm/window.h"

class principal_page : public Gtk::Window 
{
protected:
    void quitpage();
    Gtk::Box main_box;
    Gtk::Label label;
public:
    principal_page(const std::string& project_name);
    virtual ~principal_page();
};


#endif