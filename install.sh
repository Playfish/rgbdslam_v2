#Prepare System
if test ! -d /opt/ros/indigo; then
  echo This script assumes ROS indigo to be installed
  echo The directory /opt/ros/indigo was not found
  exit 1
fi

PROJECTDIR=`pwd`
echo "This script will install all dependency with rgbdslam_v2, which in $PROJECTDIR."
echo "Press enter to continue, Ctrl-C to cancel"
read
cd $PROJECTDIR

source /opt/ros/indigo/setup.bash

echo
echo "Install SIftGPU in root directory /usr/local."
echo
sudo cp ThridLibrary/libsiftgpu.so /usr/local/lib/
sudo cp ThridLibrary/SiftGPU.h /usr/local/include/

echo
echo "Updating ROS dependency database"
echo
rosdep update

echo "Install dependences for g2o"
sudo apt-get install ros-indigo-libg2o
echo

echo
echo "Install dependences for Qt5"
sudo apt-get install qt5-default
echo

#Install missing dependencies
rosdep install rgbdslam
echo
echo "Now you can compile rgbdslam_v2 using catkin_make."
echo "Checkout if you install cv_bridge with opencv 3.0 and above."
echo
