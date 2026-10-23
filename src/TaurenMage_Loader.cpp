#include "ScriptMgr.h"

// Clase base vacía para registrar el módulo en el emulador
class mod_tauren_mage : public PlayerScript {
public:
    mod_tauren_mage() : PlayerScript("mod_tauren_mage") {}
};

// Función de carga requerida por AzerothCore
void Addmod_tauren_mageScripts() {
    new mod_tauren_mage();
}