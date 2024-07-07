#!/bin/bash
user=$(whoami)
echo "Starting setup process for user $user"
user_directory="/home/$user"
config_directory="$user_directory/perro"
#Descargar awesome
#sudo apt update
#sudo apt install awesome
#sudo apt install awesome-extra
#sudo apt install awesome-doc
#sudo apt install nitrogen
#sudo apt install polybar
#sudo apt install zsh
#sudo apt install libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev meson ninja-build uthash-dev

#git clone https://github.com/yshui/picom 
#cd picom
#meson setup --buildtype=release build
#sudo ninja -C build install
if [ -d "$config_directory" ]; then

  echo "config folder exists, copying config files into it."

 else
	 echo "Config directory does not exist"
	 mkdir $config_directory

fi

#copy config giless

if ! [ -d "$config_directory/polybar" ]; then

	mkdir "$config_directory/polybar"

fi

cp -r polybar/* "$config_directory/polybar"

if ! [ -d "$config_directory/awesome" ]; then

	mkdir "$config_directory/awesome"

fi

cp -r awesome/* "$config_directory/awesome"

if ! [ -d "$config_directory/picom" ]; then

	mkdir "$config_directory/picom"

fi

cp -r picom/* "$config_directory/picom"

echo "Config files copied successfully, restart awesomw wm then run the init.sh script to start the changes."



