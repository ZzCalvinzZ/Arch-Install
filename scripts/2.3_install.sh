nvs add lts
nvs use lts
nvs link lts

git clone https://github.com/momo-lab/pyenv-install-latest.git "$(pyenv root)"/plugins/pyenv-install-latest
pyenv install-latest
pyenv virtualenv $(pyenv install-latest --print) python3
pyenv global python3

pip install neovim flake8 black ipdb ipython
pip install --user neovim

sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d
sudo ln -s ~/fonts/local.conf /etc/fonts/local.conf

sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo usermod -aG docker calvin

sudo systemctl enable powertop.service
sudo systemctl start powertop.service

# for systemd logging to be viewed with journalctl
sudo systemctl enable syslog-ng
sudo systemctl start syslog-ng

#antivirus
sudo systemctl enable clamav-freshclam
sudo systemctl start clamav-freshclam
sudo systemctl enable clamav-daemon
sudo systemctl start clamav-daemon

echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/40-max-user-watches.conf && sudo sysctl --system

betterlockscreen -u '/home/calvin/.config/wallpapers/lockscreen/'

xdg-user-dirs-update

sudo fallocate -l 16G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
