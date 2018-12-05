sudo pacman -S fd bat jq percol udisks2 udiskie
sudo pacman -S ntfs-3g syslog-ng httpie
sudo pacman -S git python python-pip python2 python2-pip go ruby
sudo pacman -S xorg
sudo pacman -S i3-gaps i3blocks i3status
sudo pacman -S xorg-xinit feh tmux rofi ranger arandr xss-lock dunst powertop
sudo pacman -S openssh openssl
sudo pacman -S playerctl mlocate ripgrep
sudo pacman -S ttf-dejavu ttf-liberation wqy-zenhei noto-fonts
sudo pacman -S sysstat vlc docker qt4 dhclient libmariadbclient kitty
sudo pacman -S p7zip unrar perl-file-mimeinfo libreoffice-still thunar zathura zathura-pdf-poppler
sudo pacman -S xdg-user-dirs acpid simplescreenrecorder xfce4-power-manager tlp cups system-config-printer
sudo pacman -S chromium pepper-flash firefox
sudo pacman -S physlock mysql-workbench
sudo pacman -S cowsay fortune-mod

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

yay -S nerd-fonts-complete ttf-google-fonts-git laptop-mode-tools
yay -S slack-desktop spotify-stable dropbox autorandr alarm-clock-applet gst-plugins-good
yay -S zeal thunderbird chromium-widevine insomnia

export NVS_HOME="$HOME/.nvs"
git clone https://github.com/jasongin/nvs "$NVS_HOME"
. "$NVS_HOME/nvs.sh" install

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
