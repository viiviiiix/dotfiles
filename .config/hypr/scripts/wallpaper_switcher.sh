DIR="${HOME}/Pictures/wallpapers"
BG="$(find $DIR -type f -name '*.jpg' -o -name '*.jpeg' -o -name '*.png' | shuf -n1)"
awww img $BG \
&& cp $BG ~/.cache/current_wallpaper \
&& wallust run $BG \
&& killall -SIGUSR2 waybar
