#include <iostream>
#include <stdio.h>
#include <iostream>
#include <stdio.h>
//sdl imports
#include "SDL.h"
#include "SDL_opengl.h"
#include <SDL_opengles2.h>
//imgui import and sld2 and opengl backends
#include "imgui.h"
#include "imgui_impl_sdl2.h"
#include "imgui_impl_opengl3.h"
//header import 
#include "create_project.h"


//inicializate
create_project::create_project(){}
//destructor
create_project::~create_project(){}

void create_project::create_project_window(){
 SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
        SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 24);
        SDL_GL_SetAttribute(SDL_GL_STENCIL_SIZE, 8);
        SDL_WindowFlags window_flags = (SDL_WindowFlags)(SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE | SDL_WINDOW_ALLOW_HIGHDPI);
        //creating the sdl window 
        SDL_Window* window = SDL_CreateWindow("engine", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,600, 500, window_flags);
        //creating a opengl renderer 
        SDL_GLContext gl_context = SDL_GL_CreateContext(window);
        SDL_GL_MakeCurrent(window,gl_context);
        SDL_GL_GetSwapInterval();
        
        // Setup Dear ImGui context
        IMGUI_CHECKVERSION();
        ImGui::CreateContext();
        ImGuiIO& io = ImGui::GetIO();

        //config flags
        io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;
        io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;

         // Setup Dear ImGui style
         ImGui::StyleColorsDark();
        //ImGui::StyleColorsLight();

        //set up platafforms/ backends 
        ImGui_ImplSDL2_InitForOpenGL(window,gl_context);
        ImGui_ImplOpenGL3_Init();

    if(window == nullptr){
        std::cout<<"error al crear la ventana"<<std::endl;
        SDL_Quit();
    }

       // Main loop
    bool done = false;
#ifdef __EMSCRIPTEN__
    // For an Emscripten build we are disabling file-system access, so let's not attempt to do a fopen() of the imgui.ini file.
    // You may manually call LoadIniSettingsFromMemory() to load settings from your own storage.
    io.IniFilename = nullptr;
    EMSCRIPTEN_MAINLOOP_BEGIN
#else
    while (!done)
#endif
    {
        // Poll and handle events (inputs, window resize, etc.)
        // You can read the io.WantCaptureMouse, io.WantCaptureKeyboard flags to tell if dear imgui wants to use your inputs.
        // - When io.WantCaptureMouse is true, do not dispatch mouse input data to your main application, or clear/overwrite your copy of the mouse data.
        // - When io.WantCaptureKeyboard is true, do not dispatch keyboard input data to your main application, or clear/overwrite your copy of the keyboard data.
        // Generally you may always pass all inputs to dear imgui, and hide them from your application based on those two flags.
        SDL_Event event;
        while (SDL_PollEvent(&event))
        {
            ImGui_ImplSDL2_ProcessEvent(&event);
            if (event.type == SDL_QUIT)
                done = true;
            if (event.type == SDL_WINDOWEVENT && event.window.event == SDL_WINDOWEVENT_CLOSE && event.window.windowID == SDL_GetWindowID(window))
                done = true;
        }

        // Start the Dear ImGui frame
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplSDL2_NewFrame();
        ImGui::NewFrame();

        ImGui::Begin("hello", nullptr, ImGuiWindowFlags_None);
        ImGui::Text("hello");
        ImGui::End();

        // //deleteing instance element_list widget
        // _render_widget.~info_render_widget();
        // _header_widget.~header_engine_widget();
        // _widgets_created.~elemets_widget();
        // _folders_widget.~folders_lsit_widget();
        // _scene_view_widget.~scene_view();

        //display function
        ImGui::Render();
        glViewport(0, 0, (int)io.DisplaySize.x, (int)io.DisplaySize.y);
        glClearColor(0.0f,0.0f,0.0f,0.0f);
       // glClearColor(clear_color.x * clear_color.w, clear_color.y * clear_color.w, clear_color.z * clear_color.w, clear_color.w);
        glClear(GL_COLOR_BUFFER_BIT);
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
        SDL_GL_SwapWindow(window);


    }
#ifdef __EMSCRIPTEN__
    EMSCRIPTEN_MAINLOOP_END;
#endif
    SDL_GL_DeleteContext(gl_context);
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplSDL2_Shutdown();
    ImGui::DestroyContext();

}

void create_project::shootdown(){
    SDL_DestroyWindow(window);
    SDL_Quit();
}
// void create_project::on_create_project_clicked() {
//     // Lógica para manejar el clic en el botón de crear proyecto aquí
//     label_status.set_text("Proyecto creado!");
// }

