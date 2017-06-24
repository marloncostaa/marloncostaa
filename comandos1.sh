sudo apt-get update -y
sudo apt-get install nano xorg lxde-core tightvncserver -y
sudo apt-get install gnome -y
sudo apt-get install xrdp -y
sudo apt-get update -y
sudo apt-get install xfce4 -y
echo xfce4-session >~/.xsession
sudo service xrdp restart
