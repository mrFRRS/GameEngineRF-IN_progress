//src/widget/folders_list_widget..cpp

#include "folders_list_widget.h"
#include "imgui.h"

//constuctor
folders_lsit_widget::folders_lsit_widget(){}
//destructor
folders_lsit_widget::~folders_lsit_widget(){}

#include <filesystem>
#include "imgui.h"

// namespace fs = std::filesystem;

// void ShowDirectoryContents(const std::string& path) {
//     for (const auto& entry : fs::directory_iterator(path)) {
//         // Mostrar solo directorios
//         if (fs::is_directory(entry.path())) {
//             if (ImGui::TreeNode(entry.path().filename().string().c_str())) {
//                 // Puedes agregar más widgets o acciones aquí según sea necesario
//                 ImGui::TreePop();
//             }
//         }
//     }
// }

void folders_lsit_widget::folders_widget(){
    ImGui::Begin("folders", nullptr, ImGuiWindowFlags_None);
    ImGui::SetWindowPos(ImVec2(250,500),ImGuiCond_Always);
    ImGui::SetWindowSize(ImVec2(550,250), ImGuiCond_Always);
    ImGui::End();
}