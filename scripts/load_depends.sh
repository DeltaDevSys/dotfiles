clear

echo "██████                          ██████                   █████                                      "
echo "█    ██                      █  █    ██                  █   ██                                     "
echo "█    ██  ████  ██   █   █████   █    ██  ████ █      █   █   ██  ██    █     ███  █  ██  ████ ████  "
echo "█    ██  █  █  ██ █████ █   █   █    ██  █  █ █      █   █   ██ █  █ █████   █       ██  █  █ █     "
echo "█    ██  ████  ██   █   █   █   █    ██  ████  █    █    █   ██ █  █   █   █████  █  ██  ████ ████  "
echo "█    ██  █     ██   █   █   █   █    ██  █      █  █     █   ██ █  █   █     █    █  ██  █       █  "
echo "██████   ████  ██   ██  ███████ ██████   ███     ██      ████    ██    ███   █    █  ██  ███  ████  "
echo "                  "

while true; do
  echo "starting script for installing depends: (y/n) "
  read is_start

  if [[ "$is_start" == "y" ]]; then

    echo "installing depends"
    echo "updating packages"
    sudo pacman -Syu
    echo "installing packages"

    echo "installing git"
    sudo pacman -S git

    echo "installing fonts"
    sudo pacman -S nerd-fonts 
    sudo pacman -S JetBrainsMono.zip

    echo "installing tool for screenshot"
    sudo pacman -S grim
    sudo pacman -S slurp

    sudo pacman -S wofi hyprland waybar 
    sudo pacman -S vim nvim lua fish
    sudo pacman -S fcitx5 fcitx-configtool
    sudo pacman -S wireplumber pipewire pipewire-media-session
    sudo pacman -S xdg-desktop-portal-hyprland
    sudo pacman -S nm-applet

    echo "installing hyprland utils"
    sudo pacman -S hyprpaper
    sudo pacman -S hyprlock
    sudo pacman -S hyprctl

    echo "installing utils"
    sudo pacman -S fastfetch htop cava yazi zoxide
    sudo pacman -S exa bat
    sudo pacman -S papirus-icon-theme

    echo "installing plug.vim"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    echo "installing catppuccin kde theme"
    git clone --depth=1 https://github.com/catppuccin/kde 
    cd ~/kde
    ./install.sh

    echo "end installing depends"
  elif [[ "$is_start" == "n" ]]; then
    echo "script is not starting"
    break
  else
    echo "choose only y or n"
  fi
done
