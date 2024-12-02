monitors="$(hyprctl monitors all | grep 'Monitor' | awk '{print $2}')"
HDMI=$(echo "$monitors" | grep 'HDMI')
eDP=$(echo "$monitors" | grep 'eDP')

echo $HDMI
if [ -z "$eDP" ]; then exit; fi

if [ -n "$HDMI" ]; then
  exit 0;
	hyprctl --batch "\
		keyword monitor $eDP,highres,-900x380,auto,transform,3;\
		keyword monitor $HDMI,2560x1440@75,0x0,1,transform,0;\
		"
	#hyprctl --batch "\
		#keyword monitor $eDP,highres,-1600x0,auto,transform,0;\
		#keyword monitor $HDMI,2560x1440@75,0x0,1,transform,0;\
		#"
else
	hyprctl --batch "\
		keyword monitor $eDP,highres,0x0,auto,transform,0;\
		keyword monitor $HDMI,disable;\
	"
fi
