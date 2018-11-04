source ~/.nvm/nvm.sh
nvm install node
pip install --user virtualenvwrapper
pip2 install --user virtualenvwrapper
pip install --user neovim

sudo ln -s /usr/bin/python2 /usr/local/bin/python2
sudo ln -s /usr/bin/python /usr/local/bin/python

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

sudo systemctl enable powertop.service
sudo systemctl start powertop.service

# for systemd logging to be viewed with journalctl
sudo systemctl enable syslog-ng
sudo systemctl start syslog-ng

# for networking/dns
sudo ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
sudo systemctl enable systemd-resolved.service
sudo systemctl start systemd-resolved.service

echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/40-max-user-watches.conf && sudo sysctl --system

betterlockscreen -u '/home/calvin/.config/wallpapers/lockscreen/'

xdg-user-dirs-update

sudo fallocate -l 16G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
