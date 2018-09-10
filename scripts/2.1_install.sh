pacman -S fd bat jq percol udisks2 udiskie ntfs-3g xorg xorg-xinit i3 git feh tmux rofi ranger git python python-pip python2 python2-pip go ruby openssh openssl arandr ttf-dejavu ttf-liberation wqy-zenhei noto-fonts mlocate ripgrep playerctl sysstat vlc docker qt4 dhclient libmariadbclient dunst p7zip unrar perl-file-mimeinfo libreoffice-still thunar zathura zathura-pdf-poppler xss-lock xdg-user-dirs acpid simplescreenrecorder powertop kitty xfce4-power-manager cups system-config-printer openresolv

pacaur -S google-chrome nerd-fonts-complete ttf-google-fonts-git laptop-mode-tools slack-desktop zsh-pure-prompt spotify dropbox autorandr alarm-clock-applet gst-plugins-good thunderbird zeal i3lock-next-git

sudo systemctl enable dnsmasq.service
sudo systemctl start dnsmasq.service

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
nvm install node
sudo pip install virtualenvwrapper
sudo pip2 install virtualenvwrapper
sudo ln -s /usr/bin/python2 /usr/local/bin/python2
sudo ln -s /usr/bin/python /usr/local/bin/python

ssh-keygen -t rsa -b 4096 -C "calvinc@surveymonkey.com"
sudo sh -c "curl https://raw.githubusercontent.com/b4b4r07/ssh-keyreg/master/bin/ssh-keyreg -o /usr/local/bin/ssh-keyreg && chmod +x /usr/local/bin/ssh-keyreg"
ssh-keyreg -p ~/.ssh/id_rsa.pub -u ZzCalvinzZ github

mkdir dev; cd dev
git clone git@github.com:ZzCalvinzZ/dotfiles.git
cd ~
ln -sfFnv ~/dev/dotfiles/{.,}* ~/

sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d
sudo ln -s ~/fonts/local.conf /etc/fonts/local.conf

gem install tmuxinator
npm install -g pure-prompt

cd ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo usermod -aG docker calvin

echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/40-max-user-watches.conf && sudo sysctl --system

xdg-user-dirs-update
