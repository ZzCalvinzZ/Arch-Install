sudo pacman -S fd bat jq percol udisks2 udiskie
sudo pacman -S ntfs-3g syslog-ng
sudo pacman -S git python python-pip python2 python2-pip go ruby
sudo pacman -S xorg
sudo pacman -S i3-gaps
sudo pacman -S i3blocks
sudo pacman -S i3status
sudo pacman -S xorg-xinit feh tmux ranger arandr xss-lock dunst powertop
sudo pacman -S openssh openssl
sudo pacman -S playerctl mlocate ripgrep
sudo pacman -S ttf-dejavu ttf-hack ttf-liberation wqy-zenhei noto-fonts
sudo pacman -S sysstat vlc docker qt4 dhclient libmariadbclient alacritty kitty
sudo pacman -S p7zip unrar perl-file-mimeinfo libreoffice-still
sudo pacman -S xdg-user-dirs acpid simplescreenrecorder xfce4-power-manager tlp cups system-config-printer
sudo pacman -S pepper-flash firefox
sudo pacman -S physlock mysql-workbench
sudo pacman -S cowsay fortune-mod
sudo pacman -S clamav
sudo pacman -S gvfs gvfs-smb 
sudo pacman -S hub
sudo pacman -S weechat
sudo pacman -S pacman-contrib
sudo pacman -S thunar thunar-archive-plugin xarchiver
sudo pacman -S arc-icon-theme

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

yay -S ttf-font-awesome-4 ttf-google-fonts-git laptop-mode-tools
yay -S slack-desktop spotify dropbox autorandr gst-plugins-good
yay -S zeal google-chrome
yay -S pyenv tmuxinator
yay -S ulauncher
yay -S gtk-theme-arc-gruvbox-git
yay -S wpa_actiond
yay -S neovim_nightly
yay -S gllock-git

export NVS_HOME="$HOME/.nvs"
git clone https://github.com/jasongin/nvs "$NVS_HOME"
. "$NVS_HOME/nvs.sh" install

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
