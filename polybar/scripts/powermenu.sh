#!/usr/bin/env bash

dir="$HOME/.config/polybar/scripts/rofi"

rofi_command="rofi -no-config -theme $dir/powermenu.rasi"

options=(
    " Shutdown"
    " Restart"
    " Lock"
    " Sleep"
    " Logout"
)

confirm_exit() {
    rofi -dmenu \
        -no-config \
        -i \
        -no-fixed-num-lines \
        -p "Are You Sure? (y/n): " \
        -theme "$dir/confirm.rasi"
}

msg() {
    rofi -no-config -theme "$dir/message.rasi" -e "$1"
}

get_formatted_uptime() {
    uptime=$(uptime -p)
    # Filtrar y formatear el tiempo de actividad
    formatted_uptime=$(echo "$uptime" | sed -E 's/up\s+([0-9]+)\s+hours?,\s+([0-9]+)\s+minutes?/Uptime: \1hs \2min/')
    echo "$formatted_uptime"
}

execute_action() {
    case $1 in
        " Shutdown")
            confirm=$(confirm_exit)
            if [[ $confirm == "y" || $confirm == "yes" ]]; then
                systemctl poweroff
            fi
            ;;
        " Restart")
            confirm=$(confirm_exit)
            if [[ $confirm == "y" || $confirm == "yes" ]]; then
                systemctl reboot
            fi
            ;;
        " Lock")
            if [[ -x /usr/bin/i3lock ]]; then
                i3lock
            elif [[ -x /usr/bin/betterlockscreen ]]; then
                betterlockscreen -l
            else
                msg "Lockscreen command not found"
            fi
            ;;
        " Sleep")
            confirm=$(confirm_exit)
            if [[ $confirm == "y" || $confirm == "yes" ]]; then
                mpc -q pause && amixer set Master mute && systemctl suspend
            fi
            ;;
        " Logout")
            confirm=$(confirm_exit)
            if [[ $confirm == "y" || $confirm == "yes" ]]; then
                case "$DESKTOP_SESSION" in
                    "Openbox") openbox --exit ;;
                    "bspwm") bspc quit ;;
                    "i3") i3-msg exit ;;
                    *)
                        msg "Desktop session not recognized"
                        ;;
                esac
            fi
            ;;
        *)
            msg "Option not recognized"
            ;;
    esac
}

chosen=$(printf '%s\n' "${options[@]}" | $rofi_command -dmenu -p "$(get_formatted_uptime)" -selected-row 0)

[[ -z $chosen ]] && exit

execute_action "$chosen"
