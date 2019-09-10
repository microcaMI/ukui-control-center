#-------------------------------------------------
#
# Project created by QtCreator 2019-02-14T10:13:22
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = ukui-control-center
TEMPLATE = app

DESTDIR = ..
INCLUDEPATH += .

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += link_pkgconfig

PKGCONFIG += gtk+-3.0

include(../plugins/component/component.pri)

inst1.files += ukui-control-center.desktop
inst1.path = /usr/share/applications
target.source += $$TARGET
target.path = /usr/bin
INSTALLS += inst1 \
    target

SOURCES += \
        main.cpp \
        mainwindow.cpp \
    modulepagewidget.cpp \
    mainpagewidget.cpp \
    maincomponent/custdomlabel.cpp \
    maincomponent/custdomframe.cpp \
    maincomponent/listwidgetitem.cpp

HEADERS += \
        mainwindow.h \
        interface.h \
    modulepagewidget.h \
    mainpagewidget.h \
    maincomponent/custdomlabel.h \
    maincomponent/custdomframe.h \
    maincomponent/listwidgetitem.h

FORMS += \
        mainwindow.ui \
    modulepagewidget.ui \
    mainpagewidget.ui

RESOURCES += \
    res/img.qrc

DISTFILES +=