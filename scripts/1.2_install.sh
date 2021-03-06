ln -sf /usr/share/zoneinfo/Canada/Eastern /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
touch /etc/hostname; echo 'calvinarch' > /etc/hostname
echo '127.0.0.1          localhost.localdomain     localhost' >> /etc/hosts
echo '::1                localhost.localdomain     localhost' >> /etc/hosts
echo '127.0.0.1          calvinarch.localdomain    calvinarch' >> /etc/hosts
pacman -S iw wpa_supplicant dialog vim parted grub efibootmgr zsh alsa-utils unzip xbindkeys tree acpi htop networkmanager network-manager-applet gnome-keyring dnsutils
passwd
sudo systemctl enable NetworkManager.service
useradd -m -G wheel -s /bin/zsh calvin
passwd calvin
visudo
