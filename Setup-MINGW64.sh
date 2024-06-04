#! /bin/bash

pacman -Syuu
pacman -S --needed unzip make git mingw-w64-i686-gcc mingw-w64-x86_64-gcc mingw-w64-i686-glew mingw-w64-x86_64-glew mingw-w64-i686-SDL2 mingw-w64-i686-SDL mingw-w64-x86_64-SDL2 mingw-w64-x86_64-SDL python3

if [ ! -f app/jni/src/baserom.us.z64 ]; then
	echo "  __  __   _               _                     _____     ____    __  __ ";
	echo " |  \/  | (_)             (_)                   |  __ \   / __ \  |  \/  |";
	echo " | \  / |  _   ___   ___   _   _ __     __ _    | |__) | | |  | | | \  / |";
	echo " | |\/| | | | / __| / __| | | | '_ \   / _\` |   |  _  /  | |  | | | |\/| |";
	echo " | |  | | | | \__ \ \__ \ | | | | | | | (_| |   | | \ \  | |__| | | |  | |";
	echo " |_|  |_| |_| |___/ |___/ |_| |_| |_|  \__, |   |_|  \_\  \____/  |_|  |_|";
	echo "                                        __/ |                             ";
	echo "                                       |___/                              ";
    echo "File app/jni/src/baserom.us.z64 not found!"
	exit 1
fi


echo "   _____   __  __     __    _  _                      ";
echo "  / ____| |  \/  |   / /   | || |                     ";
echo " | (___   | \  / |  / /_   | || |_    ___  __  __     ";
echo "  \___ \  | |\/| | | '_ \  |__   _|  / _ \ \ \/ /     ";
echo "  ____) | | |  | | | (_) |    | |   |  __/  >  <      ";
echo " |_____/  |_|  |_|  \___/_    |_|    \___| /_/\_\   _ ";
echo "     /\                 | |                (_)     | |";
echo "    /  \     _ __     __| |  _ __    ___    _    __| |";
echo "   / /\ \   | '_ \   / _\` | | '__|  / _ \  | |  / _\` |";
echo "  / ____ \  | | | | | (_| | | |    | (_) | | | | (_| |";
echo " /_/    \_\ |_| |_|  \__,_| |_|     \___/  |_|  \__,_|";
echo "                                                      ";

cd app/jni/src
make
make
cd ../../..


echo "  ______   _           _         _                  _ ";
echo " |  ____| (_)         (_)       | |                | |";
echo " | |__     _   _ __    _   ___  | |__     ___    __| |";
echo " |  __|   | | | '_ \  | | / __| | '_ \   / _ \  / _\` |";
echo " | |      | | | | | | | | \__ \ | | | | |  __/ | (_| |";
echo " |_|      |_| |_| |_| |_| |___/ |_| |_|  \___|  \__,_|";
echo "                                                      ";
echo "Done, the compiling error for src/goddard/renderer.c can be ignored"
