# Installation

## Internet
First get the internet connection running
[Network Configuration](https://wiki.archlinux.org/index.php/Network_configuration)

## create and mount partitions
Use parted to make the necessary partions on your drive
[Partitioning](https://wiki.archlinux.org/index.php/partitioning)

sample partitions
```
Number  Start    End     Size    File system  Name                  Flags
 1      1049kB   600MB   599MB   fat32        EFI system partition  boot, esp
 2      601MB    21.1GB  20.9GB               Basic data partition  msftdata
```

Format new partitions
```
mkfs.ext4 /dev/sdx2
mkdosfs -F 32 -I /dev/sdx1
```

mount drives from sample partitions
```
mount /dev/sdx2 /mnt
```

sample

## use initial install scripts
```
sh -c "$(curl -fsSL https://goo.gl/fqShxa)"
sh -c "$(curl -fsSL https://goo.gl/FekBSp)"
```
## install grub
info here: [GRUB](https://wiki.archlinux.org/index.php/GRUB)
```
mount /dev/sdxx /boot
```

### for uefi and intel cpu
```
bootctl install
pacman -S intel-ucode
```
reboot > login in as calvin

## Optional Encryption
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

## setup OS
```
sh -c "$(curl -fsSL https://goo.gl/hvn4X6)"
sh -c "$(curl -fsSL https://goo.gl/TAvhB4)"
sh -c "$(curl -fsSL https://goo.gl/EYAVDq)"
```
setup autorandr profiles
(configure your monitors, then save each profile) ex.
```
autorandr -s mobile
```

## troubleshooting
To arch-chroot over luks
```
cryptsetup luksOpen /dev/sdxx crypt
vgchange -a y
sudo mount /dev/mapper/vgcrypt-home /mnt
arch-chroot /mnt
```
