# only for Arch and Arch-based
echo "installing depends"
echo "updating packages"
sudo pacman -Syu
echo "installing packages"
sudo pacman -S nerd-font wofi hyprland waybar vim nvim lua fish
sudo pacman -S wireplumber pipewire pipewire-media-session xdg-desktop-portal-hyprland
echo "installing hyprland utils"
sudo pacman -S hyprpaper, hyprlock, hyprctl
echo "installing utils"
sudo pacman -S fastfetch htop cava yazi
