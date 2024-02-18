#include "imgui.h"
#include "elements_list_widget..h"

//constructor and destructor of elements_widget
elemets_widget::elemets_widget(){}
elemets_widget::~elemets_widget() {}


//fisrt widget elements right side
void elemets_widget::elements_scenario(){

        // Obtén el estilo actual de ImGui
    ImGuiStyle& style = ImGui::GetStyle();

    float originalBorderSize = style.FrameBorderSize;
    float originalRounding = style.FrameRounding;

    // Modifica el estilo para cambiar el borde del botón
    style.FrameBorderSize = 1.0f;  // Ajusta según tus preferencias
    style.FrameRounding = 2.0f;    // Ajusta según tus preferencias
    // style.Colors[ImGuiCol_MenuBarBg] = ImVec4(1.0f, 0.0f, 0.0f, 1.0f);
        // Modifica el color del texto
    // style.Colors[ImGuiCol_Text] = ImVec4(1.0f, 0.0f, 0.0f, 1.0f);  // Rojo

    // // Modifica el color del fondo de los botones
    // style.Colors[ImGuiCol_Button] = ImVec4(0.0f, 1.0f, 0.0f, 1.0f);  //
    


    ImGui::Begin("Menu Lateral", nullptr,ImGuiWindowFlags_MenuBar);
    ImGui::SetWindowPos(ImVec2(0,20), ImGuiCond_Always);
    ImGui::SetWindowSize(ImVec2(250,700), ImGuiCond_Always);

    // Inicia el menú bar
    if (ImGui::BeginMenuBar()) {
        if (ImGui::BeginMenu("Add")) {
            if (ImGui::MenuItem("Add Elements")) {
                // Acción al hacer clic en "Add Elements"
            }
            ImGui::EndMenu();
        }

        // Puedes agregar más menús aquí...

        ImGui::EndMenuBar();
    }
        // Restaura el estilo original
    style.FrameBorderSize = originalBorderSize;
    style.FrameRounding = originalRounding;

    // Fin del menú lateral
    ImGui::End();
}