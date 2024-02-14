#include "imgui.h"
#include "elements_list_widget..h"

//constructor
elemets_widget::elemets_widget(){}

//destructor
elemets_widget::~elemets_widget() {}


//fisrt widget elements right side
void elemets_widget::elements_scenario(){
    ImGui::Begin("Menu Lateral", nullptr, ImGuiWindowFlags_MenuBar);

    if (ImGui::BeginMenuBar()) {
        if (ImGui::BeginMenu("Hello")) {
            if (ImGui::Button("Hello", ImVec2(50, 50))) {
                // Acción al hacer clic en el botón "Hello"
            }
            ImGui::EndMenu();
        }
        ImGui::EndMenuBar();
    }

    // Puedes agregar elementos al menú lateral aquí
    ImGui::Text("test1");

    // Fin del menú lateral
    ImGui::End();
}