##quick install
first get the internet connection running and mount your partitions. Then do the following:
```
sh -c "$(curl -fsSL https://goo.gl/B2x1uo)"
sh -c "$(curl -fsSL https://goo.gl/povLJc)"

```
###for uefi and intel cpu
```
mount /dev/sdxx /boot
bootctl install
pacman -S intel-ucode
```
reboot > login in as calvin

##setup OS
```
git clone https://aur.archlinux.org/cower.git
git clone https://aur.archlinux.org/pacaur.git
cd cower
gpg --recv-key <KEYID>
gpg --lsign <KEYID>
makepkg -si
cd ../pacaur
makepkg -si

sh -c "$(curl -fsSL https://goo.gl/UsLDmA)"
```
setup autorandr profiles
(configure your monitors, then save each profile) ex.
```
autorandr -s mobile
```
Setup lvm over luks
add hooks to /etc/mkinitcpio.conf

```
cryptsetup --cipher aes-xts-plain64 \
  --key-size 512 \
  --hash sha256 \
  --iter-time 3000 \
  --use-random \
  --verify-passphrase \
  luksFormat /dev/sdxx

 cryptsetup luksOpen /dev/sdxx lvm
pvcreate /dev/mapper/lvm
vgcreate vgcrypt /dev/mapper/lvm
lvcreate --extents +100%FREE --name home vgcrypt
mkfs.ext4 /dev/mapper/vgcrypt-home
```
add to /etc/mkinitcpio.conf
```
HOOKS="base udev autodetect modconf block consolefont keyboard encrypt lvm2 filesystems fsck"
```
To arch-chroot over luks
```
cryptsetup luksOpen /dev/sdxx crypt
vgchange -a y
sudo mount /dev/mapper/vgcrypt-home /mnt
arch-chroot /mnt
```
