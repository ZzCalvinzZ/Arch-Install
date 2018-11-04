sudo pacman -S fd bat jq percol udisks2 udiskie
sudo pacman -S ntfs-3g syslog-ng httpie
sudo pacman -S git python python-pip python2 python2-pip go ruby
sudo pacman -S xorg
sudo pacman -S i3-gaps i3blocks i3lock-color i3status
sudo pacman -S xorg-xinit feh tmux rofi ranger arandr xss-lock dunst powertop
sudo pacman -S openssh openssl
sudo pacman -S playerctl mlocate ripgrep
sudo pacman -S ttf-dejavu ttf-liberation wqy-zenhei noto-fonts
sudo pacman -S sysstat vlc docker qt4 dhclient libmariadbclient kitty
sudo pacman -S p7zip unrar perl-file-mimeinfo libreoffice-still thunar zathura zathura-pdf-poppler
sudo pacman -S xdg-user-dirs acpid simplescreenrecorder xfce4-power-manager tlp cups system-config-printer
sudo pacman -S chromium pepper-flash firefox

git clone https://aur.archlinux.org/cower.git
git clone https://aur.archlinux.org/pacaur.git
cd cower
gpg --recv-keys --keyserver hkp://pgp.mit.edu 1EB2638FF56C0C53
gpg --recv-keys --keyserver keyserver.ubuntu.com 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
makepkg -si
cd ../pacaur
makepkg -si

pacaur -S nerd-fonts-complete ttf-google-fonts-git laptop-mode-tools
pacaur -S slack-desktop zsh-pure-prompt spotify-stable dropbox autorandr alarm-clock-applet gst-plugins-good
pacaur -S zeal betterlockscreen thunderbird chromium-widevine

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
