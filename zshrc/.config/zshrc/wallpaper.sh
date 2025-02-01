hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$(realpath $1)"
hyprctl hyprpaper wallpaper ",$(realpath $1)"
