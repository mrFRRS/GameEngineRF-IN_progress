#include "gtkmm.h"
#include "principal_page.h"
#include <iostream>

principal_page::principal_page(const Glib::RefPtr<Gtk::Application>& app, const std::string& project_name)
: main_box(Gtk::Orientation::VERTICAL)
{
    //                                                                                      //
    // ++++++++++++++++++++++++++ Basic settings for the page +++++++++++++++++++++++++++++ //
    //                                                                                      //
    
    set_title("Project " + project_name);
    set_default_size(800, 900);
    set_child(main_box);

    //                                                                             //
    // ++++++++++++++============ action group actions ++++++++++++++++++++++===== //
    //                                                                             //

    m_ref_action_group = Gio::SimpleActionGroup::create();


    //                                                                           //
    // +++++++++++++++++++++++++ fisrt submenu File ++++++++++++++++++++++++++++ //
    //                                                                           ??
    m_ref_action_group->add_action("new",
        // [] { std::cout << "A File|New menu item was selected.\n"; /* on_action_file_new() */}); 
    sigc::mem_fun(*this, &principal_page::on_action_others));

    m_ref_action_group->add_action("open",
        sigc::mem_fun(*this, &principal_page::on_action_others));

    // m_ref_action_rain = m_ref_action_group->add_action_bool("rain",
    //     [this] { on_action_toggle(); }, false);
    m_ref_action_group->add_action("quit",
        sigc::mem_fun(*this, &principal_page::on_action_file_quit));

    
    
    //                                                                             //
    // +++++++++++++++++++++++++ second submenu Edit +++++++++++++++++++++++++++++ //
    //                                                                             //
    
    // With a lambda expression and sigc::track_obj() or sigc::track_object().
    // Disconnects automatically like sigc::mem_fun().
#if SIGCXX_MINOR_VERSION >= 4
    m_ref_action_group->add_action("cut",
        sigc::track_object([this] { on_action_others(); }, *this));
#else
    m_ref_action_group->add_action("cut",
        sigc::track_obj([this] { on_action_others(); }, *this));
#endif
    m_ref_action_group->add_action("copy",
        sigc::mem_fun(*this, &principal_page::on_action_others));
    m_ref_action_group->add_action("paste",
        sigc::mem_fun(*this, &principal_page::on_action_others));


    //                                                                       //
    // +++++++++++++++++++++ insert action group +++++++++++++++++++++++++++ //
    //                                                                       //

    
    insert_action_group("example", m_ref_action_group);
    // Define how the actions are presented in the menus and toolbars:
    m_ref_builder = Gtk::Builder::create();
    
    
    //                                                                                                        //
    // +++++++++++++++++++++++ Layout the actions in a menubar and toolbar ++++++++++++++++++++++++++++++++++ //
    //                                                                                                        //
    
    const Glib::ustring ui_info =
        "<interface>"
        "  <menu id='menubar'>"
        "    <submenu>"
        "      <attribute name='label' translatable='yes'>_File</attribute>"
        "      <section>"
        "        <item>"
        "          <attribute name='label' translatable='yes'>_New</attribute>"
        "          <attribute name='action'>example.new</attribute>"
        "        </item>"
        "        <item>"
        "          <attribute name='label' translatable='yes'>_Open</attribute>"
        "          <attribute name='action'>example.open</attribute>"
        "        </item>"
        "      </section>"
        "      <section>"
        "        <item>"
        "          <attribute name='label' translatable='yes'>Rain</attribute>"
        "          <attribute name='action'>example.rain</attribute>"
        "        </item>"
        "      </section>"
        "      <section>"
        "        <item>"
        "          <attribute name='label' translatable='yes'>_Quit</attribute>"
        "          <attribute name='action'>example.quit</attribute>"
        "        </item>"
        "      </section>"
        "    </submenu>"
        "    <submenu>"
        "      <attribute name='label' translatable='yes'>_Edit</attribute>"
        "      <item>"
        "        <attribute name='label' translatable='yes'>_Cut</attribute>"
        "        <attribute name='action'>example.cut</attribute>"
        "      </item>"
        "      <item>"
        "        <attribute name='label' translatable='yes'>_Copy</attribute>"
        "        <attribute name='action'>example.copy</attribute>"
        "      </item>"
        "      <item>"
        "        <attribute name='label' translatable='yes'>_Paste</attribute>"
        "        <attribute name='action'>example.paste</attribute>"
        "      </item>"
        "    </submenu>"
        "    <submenu>"
        "      <attribute name='label' translatable='yes'>_Assets</attribute>"
        "    </submenu>"
        "    <submenu>"
                "<attribute name='label' translatable='yes'>_GameObject</attribute>"
        "    </submenu>"
        "    <submenu>"
        "      <attribute name='label' translatable='yes'>_component</attribute>"
        "    </submenu>"
        "    <submenu>"
        "      <attribute name='label' translatable='yes'>_Window</attribute>"
        "    </submenu>"
        "    <submenu>"
        "      <attribute name='label' translatable='yes'>_Help</attribute>"
        "    </submenu>"
        "  </menu>"
        "</interface>";

    // Set accelerator keys:
    app->set_accel_for_action("example.new", "<Primary>n");
    app->set_accel_for_action("example.open", "<Primary>o");
    app->set_accel_for_action("example.quit", "<Primary>q");
    app->set_accel_for_action("example.cut", "<Primary>x");
    app->set_accel_for_action("example.copy", "<Primary>c");
    app->set_accel_for_action("example.paste", "<Primary>v");

    try
    {
        m_ref_builder->add_from_string(ui_info);
        m_ref_builder->add_from_resource("/toolbar/toolbar.ui");
    }
    catch(const Glib::Error& ex)
    {
        std::cerr << "Building menus and toolbar failed: " <<  ex.what();
    }

    // Get the menubar:
    auto gmenu = m_ref_builder->get_object<Gio::Menu>("menubar");
    if (!gmenu)
        g_warning("GMenu not found");
    else
    {
        auto pMenuBar = Gtk::make_managed<Gtk::PopoverMenuBar>(gmenu);

        // Add the PopoverMenuBar to the window:
        main_box.append(*pMenuBar);
    }

    // Get the toolbar and add it to a container widget:
    auto toolbar = m_ref_builder->get_widget<Gtk::Box>("toolbar");
    if (!toolbar)
        g_warning("toolbar not found");
    else
        main_box.append(*toolbar);
}

//                                                      //
// +++++++++++++++++= destructor ++++++++++++++++++++++ //
//                                                      //

principal_page::~principal_page() {}


//                                                            //
// ++++++++++++==toolbar functions ++++++++++++++++++++++++++ //
//                                                            //

void principal_page::on_action_file_quit()
{
    set_visible(false); // Closes the main window to stop the app->make_window_and_run().
}

void principal_page::on_action_others()
{
    std::cout << "A menu item was selected." << std::endl;
}

// void principal_page::on_action_toggle()
// {
//     std::cout << "The toggle menu item was selected." << std::endl;

//     bool active = false;
//     m_ref_action_rain->get_state(active);

//     // The toggle action's state does not change automatically:
//     active = !active;
//     m_ref_action_rain->change_state(active);

//     Glib::ustring message;
//     if(active)
//         message = "Toggle is active.";
//     else
//         message = "Toggle is not active";

//     std::cout << message << std::endl;
// }
