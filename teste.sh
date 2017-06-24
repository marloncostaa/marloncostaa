#!/bin/sh

sudo apt-get update -y
sudo apt-get install libc6 tar xz-utils -y

hlvFile='/opt/hitleapviewer.tar.xz'
if [ -d /opt/hitleapviewer ]; then rm -r /opt/hitleapviewer; fi
if (($(uname -m) != 'x86_64')); then echo 'El HitLeap Viewer solo aguanta Linux de 64-bit (x86_64)';
elif wget --no-check-certificate 'https://hitleap.com/viewer/latest?platform=Linux' -O "$hlvFile"; then
    mkdir -p /opt/hitleapviewer;
    tar xpvf "$hlvFile" -C /opt/hitleapviewer;
    echo rm "$hlvFile";
else echo 'No Se Pudo Descargar el HitLeap Viewer'; fi

if [ -d /opt/hitleapviewer ]; then
    # Crear icono
    hlvIcon='/usr/share/applications/hitleapviewer.desktop'
    {
    echo '[Desktop Entry]' > "$hlvIcon";
    echo 'Version=1.0';
    echo 'Name=HitLeap Viewer';
    echo 'Name[es]=Visor HitLeap';
    echo 'Comment=HitLeap is a Traffic Exchange service, which automatically delivers free traffic to your website.';
    echo 'Comment[es]=HitLeap es un servicio de Intercambio de Trafico, el cual entrega automaticamente trafico gratis a tu sitio.';
    echo 'GenericName=Traffic Exchange Application';
    echo 'GenericName[es]=Aplicacion de Intercambio de Trafico';
    echo "Exec=sh -c '/opt/hitleapviewer/app/HitLeap-Viewer' dummy %k";
    echo 'Type=Application';
    echo 'Icon=applications-internet';
    echo 'Categories=Network;WebBrowser;Viewer;';
    echo;
    } > "$hlvIcon"
    cp "$hlvIcon" ~/Desktop
fi
