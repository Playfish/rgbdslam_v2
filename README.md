# RGBDSLAM<i>v2</i> 

More information above rgbdslam you can visit [Offical website](https://github.com/felixendres/rgbdslam_v2/).

## Preparation

This code is default compile with cv_bridge and opencv 3.0 and above.

You can download this code and run under command for installation:
```
sh install.sh
```

Notes: this code is for ROS vision Indigo.

And also you can following next.

### SiftGPU


You can following [SiftGPU website](https://github.com/pitzer/SiftGPU) get more details.

```
sudo apt-get install libglew-dev

git clone https://github.com/pitzer/SiftGPU

cd SiftCPU

mkdir build

cmake ..

make

sudo make install

cd ..

make 

sudo cp bin/libsiftgpu.so /usr/local/lib/
sudo cp src/SiftGPU/SiftGPU.h /usr/local/include/

```

### libg2o

sudo apt-get install ros-indigo-libg2o

### Qt5 

sudo apt-get install qt5-default


## Installation

Go to your catkin_ws and compile with ``catkin_ws``.

## Usage

### Model with Roch

```
roslaunch roch_description description.launch
```

### Driver with Roch

```
roslaunch roch_bringup sensor.launch
```

### RGBDSLAM

```
roslaunch rgbdslam rgbdslam.launch
```

If everything successfully will show under screeshots.

![image](https://github.com/Playfish/rgbdslam_v2/raw/master/test/rgbdslam.png)
