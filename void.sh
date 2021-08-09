echo "updating the system... "
sleep 3
sudo xbps-install -Suy


clear
echo "Install base packages... "
sleep 3
sudo xbps-install -Suy linux-headers base-devel

clear
echo "Install nonfree and multilib repos... "
sleep 3
sudo xbps-install -Suy void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
sudo xbps-install -Suy 

clear
echo "Install video drivers... "
sleep 3
sudo xbps-install -Suy linux-firmware-amd mesa-dri vulkan-loader
sudo xbps-install -Suy  mesa-vulkan-radeon mesa-vaapi mesa-vdpau MangoHud Vulkan-Headers Vulkan-Tools amdvlk vkd3d vulkan-loader vkd3d-devel MangoHud-dbg 
sudo xbps-install -Suy MesaLib-devel glu glu-devel mesa mesa-devel mesa-opencl 

clear
echo "Install networks and bluetooth headers... "
sleep 3
sudo xbps-install -Suy bluez xpadneo sbc-devel sbc ldacBT-devel ldacBT NetworkManager

clear
echo "Install apps for daily use... "
sleep 3
sudo xbps-install -Suy htop neofetch bpytop wget curl cmake extra-cmake-modules openjdk11 openjdk11-bin php php-devel php-mysql php-pgsql php-sqlite opera chrome-gnome-shell chromium bash-completion elogind mpv 

clear
echo "Install display server... "
sleep 3
sudo xbps-install -Suy gdm gnome gnome-backgrounds papirus-icon-theme papirus-folders

clear
echo "Install kvm and enable services"
sleep 3
sudo xbps-install dbus qemu libvirtd virt-manager
sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/libvirtd /var/service
sudo ln -s /etc/sv/virtlockd /var/service
sudo ln -s /etc/sv/virtlogd /var/service
sudo ln -s /etc/sv/bluetoothd /var/service
sudo ln -s /etc/sv/sshd /var/service
sudo ln -s /etc/sv/NetworkManager /var/service
sudo rm /var/service/dhcpd 

clear 
sleep 3
echo "Install fonts and flatpak support"
sudo xbps-install -Suy google-fonts-ttf flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo



