# 人脸识别考勤系统 - 服务端

基于 **Qt5 + OpenCV + SeetaFace2** 实现的高效、稳定的人脸识别智能考勤系统，支持本地数据库阅览、人脸注册与识别等功能，适用于学校、公司等场景。

## 🚀 功能特点

-   📷 **人脸检测**：基于 SeetaFace2，实现高精度人脸检测
-   🏷️ **人脸注册**：支持录入人脸数据，生成唯一身份标识
-   🔍 **人脸识别**：快速匹配数据库中的人脸信息
-   📊 **考勤管理**：记录签到数据，支持查询和导出
-   🎨 **跨平台支持**：适用于 Windows、Linux、macOS、嵌入式设备

## 🔨 开发环境

-   Qt 5.15.16
-   [OpenCv 4.5.2](https://github.com/opencv/opencv/archive/4.5.2.zip)
-   [OpenCv Contrib 4.5.2](https://github.com/opencv/opencv_contrib/archive/refs/tags/4.5.2.zip)
-   [SeetaFace2](https://github.com/seetafaceengine/SeetaFace2)
-   Qt Creator 15.0.1
-   macOS 15.3.1

## 🔧 构建 & 运行

-   在构建前，请确保您已经安装了对应版本的 **OpenCV、SeetaFace2**;
-   克隆到本地: `git clone https://github.com/Bssn520/FaceAttendance-Server.git`
-   双击 `opencvSeetaFace_Server.pro` 文件即可调用 Qt Creator 打开本项目，在 Qt Creator 内进行构建、测试即可。

## 🖥️ 使用指南

-   服务端的界面分为 3 部分，使用 `QTabWidget` 控件实现多 Tab 页的方式进行界面开发，更美观、符合现代使用习惯；

1. 回传图像展示界面

-   负责展示客户端传来的考勤图像，并在右侧实时显示服务端运行日志，不同等级日志支持不同颜色进行展示，运行情况，一目了然！
<div style="text-align: center;">
  <img src="https://github.com/Bssn520/picx-images-hosting/raw/master/20250317/recv.67xmco1x10.webp" alt="image" style="zoom:30%;" />
</div>

2. 信息采集与注册界面

-   负责脸部信息的注册，个人信息的填写功能；
-   支持摄像头实时图像采集，自行上传图片两种方式进行人脸信息的注册，方便应对不同场景需求；
<div style="text-align: center;">
  <img src="https://github.com/Bssn520/picx-images-hosting/raw/master/20250317/register.5j4csnee0h.webp" alt="image" style="zoom:30%;" />
</div>

3. 信息查询与展示界面

-   负责展示数据库内存储的员工信息，以及员工考勤信息；
-   使用 QTableView 控件对数据库记录进行展示，响应快，更方便；
<div style="text-align: center;">
  <img src="https://github.com/Bssn520/picx-images-hosting/raw/master/20250317/showDb.3k862b8vp1.webp" alt="image" style="zoom:25%;" />
</div>

## ✨ Todo

-   [ ] 使用配置文件配置项目里的模型路径等；
-   [ ] 支持 CMake 对本项目进行构建；
-   [ ] 使用 FaceNet、InsightFace 等模型替代 SeetaFace2 模型；
-   [ ] 指出对数据库记录进行筛选展示；
-   [ ] ...
