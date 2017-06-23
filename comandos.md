Connect

sudo apt-get update
sudo apt-get install nano xorg lxde-core tightvncserver
sudo apt-get install gnome
sudo apt-get install xrdp
sudo apt-get update
sudo apt-get install xfce4
echo xfce4-session >~/.xsession
sudo service xrdp restart
------------------
Wine

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install wine
sudo apt-get install firefox
-------------------
VCNServer

vncserver
(Put your password)
sudo reboot
(Open Putty Again)
vncserver :1
