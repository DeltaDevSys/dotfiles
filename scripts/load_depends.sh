# only for Arch and Arch-based
echo "installing depends"
echo "updating packages"
sudo pacman -Syu
echo "installing packages"
sudo pacman -S nerd-font wofi hyprland fastfetch waybar nvim lua fish
