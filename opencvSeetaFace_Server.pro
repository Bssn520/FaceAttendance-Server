QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets network

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


# 添加头文件
INCLUDEPATH += /Users/bssn/Downloads/FaceRecognition/opencv_452/include
INCLUDEPATH += /Users/bssn/Downloads/FaceRecognition/opencv_452/include/opencv4
INCLUDEPATH += /Users/bssn/Downloads/FaceRecognition/opencv_452/include/opencv4/opencv2
INCLUDEPATH += /Users/bssn/Downloads/FaceRecognition/seeta/include
INCLUDEPATH += /Users/bssn/Downloads/FaceRecognition/seeta/include/seeta

# 添加库
LIBS += /Users/bssn/Downloads/FaceRecognition/opencv_452/lib/libopencv*
LIBS += /Users/bssn/Downloads/FaceRecognition/seeta/lib/libSeeta*
LIBS += -L/Users/bssn/Downloads/FaceRecognition/opencv_452/lib \
        -lopencv_calib3d
LIBS += -L/Users/bssn/Downloads/FaceRecognition/seeta/lib \
        -lSeetaFaceDetector



SOURCES += \
    logger.cpp \
    main.cpp \
    mainwindow.cpp \
    qface.cpp \
    querywindow.cpp \
    registerwindow.cpp

HEADERS += \
    logger.hpp \
    mainwindow.hpp \
    qface.hpp \
    querywindow.hpp \
    registerwindow.hpp

FORMS += \
    mainwindow.ui \
    querywindow.ui \
    registerwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
