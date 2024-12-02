#!/bin/bash
## /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Game Mode. Turning off all animations

notif="$HOME/.config/swaync/images/bell.png"
SCRIPTSDIR="$HOME/.config/hypr/scripts"


HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==2{print $2}')
#if [ "$HYPRGAMEMODE" = 1 ] ; then
    #hyprctl --batch "\
        #keyword animations:enabled 0;\
        #keyword decoration:drop_shadow 0;\
        #keyword decoration:blur:passes 0;\
        #keyword general:gaps_in 0;\
        #keyword general:gaps_out 0;\
        #keyword general:border_size 1;\
        #keyword decoration:rounding 0"
    ##swww kill 
    #notify-send -e -u low -i "$notif" "gamemode enabled. All animations off"
    #exit
#else
	##swww init && swww img "$HOME/.config/rofi/.current_wallpaper"
	##sleep 0.1
	##${SCRIPTSDIR}/PywalSwww.sh
	##sleep 0.5
	##${SCRIPTSDIR}/Refresh.sh	 
    #notify-send -e -u normal -i "$notif" "gamemode disabled. All animations normal"
	#hyprctl reload
    #exit
#fi
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$HYPRGAMEMODE" = 1 ] ; then
	if [ "$1" = 1 ] ; then
		hyprctl --batch "\
			keyword decoration:drop_shadow 0;\
			keyword general:gaps_in 0;\
			keyword general:gaps_out 0;\
			keyword general:border_size 1;\
			keyword decoration:rounding 0"
			#keyword animations:enabled 0;\
			#keyword decoration:blur:enabled 0;\
	else
		hyprctl --batch "\
			keyword animations:enabled 0;\
			keyword decoration:drop_shadow 0;\
			keyword decoration:blur:enabled 0;\
			keyword general:gaps_in 0;\
			keyword general:gaps_out 0;\
			keyword general:border_size 1;\
			keyword decoration:rounding 0"
		pkill -9 mpvpaper
	fi
    exit 0
fi
hyprctl reload
if [ "$1" != 1 ]; then
	waywe start -m "HDMI-A-1" -p playlist1 -o "no-audio loop-playlist shuffle save-position-on-quit"
	mpvpaper "eDP-2" -o "no-audio --scripts=/home/xic/Documents/project/waywe/mpv_scripts input-ipc-server=/tmp/waywe-socket save-position-on-quit shuffle --script-opts=waywe-delay=1800 panscan=1.0 vf=hflip loop loop-playlist" $HOME/Pictures/wallpapers/Dynamic-Wallpapers/sub_monitor
fi
