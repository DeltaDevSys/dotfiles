# only for Arch and Arch-based
echo "installing depends"
echo "updating packages"
sudo pacman -Syu
echo "installing packages"

echo "installing fonts"
sudo pacman -S nerd-fonts 
sudo pacman -S JetBrainsMono.zip

sudo pacman -S wofi hyprland waybar 
sudo pacman -S vim nvim lua fish
sudo pacman -S fcitx5 fcitx-configurator
sudo pacman -S wireplumber pipewire pipewire-media-session xdg-desktop-portal-hyprland
sudo pacman -S nm-applet
echo "installing hyprland utils"
sudo pacman -S hyprpaper, hyprlock, hyprctl

echo "installing utils"
sudo pacman -S fastfetch htop cava yazi zoxide
sudo pacman -S exa bat
yay -S whitesur-icon-theme-git

