#!/bin/bash
# Rofi menu for Quick Edit / View of Settings (SUPER E)

configs="$HOME/.config/hypr/configs"
editor=nvim

menu(){
  printf "1. view Env-variables\n"
  printf "2. view Window-Rules\n"
  printf "3. view Startup_Apps\n"
  printf "4. view User-Keybinds\n"
  printf "5. view Monitors\n"
  printf "6. view Laptop-Keybinds\n"
  printf "7. view User-Settings\n"
  printf "8. view Default-Settings\n"
  printf "9. view Default-Keybinds\n"
}

main() {
    choice=$(menu | rofi -dmenu -config ~/.config/rofi/config-compact.rasi | cut -d. -f1)
    case $choice in
        1)
            kitty -e $editor "$configs/ENVariables.conf"
            ;;
        2)
            kitty -e $editor "$configs/WindowRules.conf"
            ;;
        3)
            kitty -e $editor "$configs/Startup_Apps.conf"
            ;;
        4)
            kitty -e $editor "$configs/UserKeybinds.conf"
            ;;
        5)
            kitty -e $editor "$configs/Monitors.conf"
            ;;
        6)
            kitty -e $editor "$configs/Laptops.conf"
            ;;
        7)
            kitty -e $editor "$configs/UserSettings.conf"
            ;;
        8)
            kitty -e $editor "$configs/Settings.conf"
            ;;
        9)
            kitty -e $editor "$configs/Keybinds.conf"
            ;;
        *)
            ;;
    esac
}

main
