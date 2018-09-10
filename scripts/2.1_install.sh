pacman -S fd bat jq percol udisks2 udiskie ntfs-3g xorg xorg-xinit i3 git feh tmux rofi ranger git python python-pip python2 python2-pip go ruby openssh openssl arandr ttf-dejavu ttf-liberation wqy-zenhei noto-fonts mlocate ripgrep playerctl sysstat vlc docker qt4 dhclient libmariadbclient dunst p7zip unrar perl-file-mimeinfo libreoffice-still thunar zathura zathura-pdf-poppler xss-lock xdg-user-dirs acpid simplescreenrecorder powertop kitty xfce4-power-manager cups system-config-printer openresolv

git clone https://aur.archlinux.org/cower.git
git clone https://aur.archlinux.org/pacaur.git
cd cower
gpg --recv-keys --keyserver hkp://pgp.mit.edu 1EB2638FF56C0C53
makepkg -si
cd ../pacaur
makepkg -si

pacaur -S google-chrome nerd-fonts-complete ttf-google-fonts-git laptop-mode-tools slack-desktop zsh-pure-prompt spotify dropbox autorandr alarm-clock-applet gst-plugins-good thunderbird zeal i3lock-next-git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
