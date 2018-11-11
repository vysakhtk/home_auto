#!/bin/sh
#This script should be ran before launching qt app
export QT_QPA_PLATFORM_PLUGIN_PATH=/usr/lib/plugins/platforms
export QT_QPA_PLATFORM=eglfs
export LD_LIBRARY_PATH=/usr/local/qt5pi/lib
sudo ldconfig
/home/pi/BUILD/home_auto_Release/home_auto


