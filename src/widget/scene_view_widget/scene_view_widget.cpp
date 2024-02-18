#include "scene_view.h"
#include "imgui.h"

scene_view::scene_view (){}

scene_view::~scene_view(){}

void scene_view::scene_view_widget(){
    ImGui::Begin("Scene View");
    ImGui::SetWindowPos(ImVec2(250,20), ImGuiCond_Always);
    // Obtener el ImDrawList actual para la ventana actual
    ImGui::End();
}