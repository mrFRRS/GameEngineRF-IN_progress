
//src/widget.header_engine_widget.cpp

//header widget
#include "header_engine_widget.h"
#include "imgui.h"

//constructor
header_engine_widget::header_engine_widget() {}

//destructor
header_engine_widget::~header_engine_widget() {}

void header_engine_widget::header_widget(){
        if (ImGui::BeginMainMenuBar()) {
              if (ImGui::BeginMenu("project")) {
                   if (ImGui::MenuItem("Create")) { 
                   }
                   if (ImGui::MenuItem("Open", "Ctrl+O")) { 
                   }
                   if (ImGui::MenuItem("Save", "Ctrl+S")) {
                   }
                   if (ImGui::MenuItem("Save as..")) { 
                    }
             ImGui::EndMenu();
             }
             if (ImGui::BeginMenu("view"))
             {  if(ImGui::MenuItem("test1")){

             }
                        ImGui::EndMenu();
             }
             
             ImGui::EndMainMenuBar();
        }
}