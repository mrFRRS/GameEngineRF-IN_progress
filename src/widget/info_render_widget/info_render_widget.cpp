
//src/widget/info_render_widget.cpp
#include "info_render_widget.h"
#include "imgui.h"

/**
 * esto se puede realizar en imgui  ImGui::Begin("Sidebar", nullptr, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoCollapse);

*/

//constructor
info_render_widget::info_render_widget(){}
//destructor
info_render_widget::~info_render_widget(){}



void info_render_widget::render_widget(){   
    ImGui::Begin("hello", nullptr,ImGuiWindowFlags_None);
    ImGui::SetWindowPos(ImVec2(900,20),ImGuiCond_Always);
    ImGui::End();
}