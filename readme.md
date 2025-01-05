# BG22C112低功耗蓝牙芯片
一节CR2032纽扣电池20ms广播下可连续使用40小时，休眠模式下待机长达278年

# 一款小型自动电键，主体由PCB板搭建，可蓝牙与微信小程序连接，进行：

* 1.自动发报
* 2.通过微信小程序连接互联网与他人通联
* 3.仅需一节纽扣电池供电，便携随处可用，可连续发报40小时

# 环境搭建

#### 1.克隆或直接下载:git clone https://github.com/losehu/BLEKey.git
#### 2.解压后进入目录 
#### 3.自行百度下载安装'make工具'
#### 4.下载SimplicityCommander,[WIN点此下载](https://www.silabs.com/documents/public/software/SimplicityCommander-Windows.zip),[MAC点此下载](https://www.silabs.com/documents/public/software/SimplicityCommander-Mac.zip),[LINUX点此下载](https://www.silabs.com/documents/public/software/SimplicityCommander-Linux.zip)
#### 5.根据自己的操作系统修改Makefile中ARM_GCC_DIR BASE_SDK_PATH COMMANDER_PATH路径
*  ARM_GCC_DIR：编译器**文件夹**路径，[点此下载](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads/12-2-rel1)
*  BASE_SDK_PATH：GECKO-SDK**文件夹**路径，[点此下载](https://github.com/SiliconLabs/simplicity_sdk/releases/download/v2024.12.0/gecko-sdk.zip)
*  BASE_SDK_PATH：SimplicityCommander**工具**的路径

# 编译
### make all 编译出的文件在build目录下

# 烧录
## 方法一(Jlink)：
* 下载JLink驱动，[点击此处](https://www.segger.com/downloads/jlink/)，并添加到环境变量
* make flash 烧录
## 方法二(蓝牙OTA):
* 手机下载simplicity-connect,[点击此处](https://www.silabs.com/developer-tools/simplicity-connect-mobile-app?tab=downloads) 
* 连接设备后OTA升级上传.gbl文件



