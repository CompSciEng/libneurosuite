#-------------------------------------------------
#
# Project created by QtCreator 2019-04-05T13:17:14
#
#-------------------------------------------------

QT       += widgets webengine webenginewidgets xml printsupport

TARGET = libneurosuite
#TARGET = libklustersshared-3
TEMPLATE = lib

#DEFINES += LIBKLUSTERSSHARED3_LIBRARY
DEFINES += LIBNEUROSUITE_LIBRARY
DEFINES += NEUROSUITE_BUILD_NEUROSUITE_LIB


QMAKE_SONAME_PREFIX = @rpath

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

RESOURCES = ../src/gui/libneurosuite-cursors.qrc
RESOURCES += ../src/gui/libneurosuite-icons.qrc

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    ../src/gui/page/klusterseparator.cpp \
    ../src/gui/page/qextenddialog.cpp \
    ../src/gui/page/qpagedialog.cpp \
    ../src/gui/page/qpagemodel.cpp \
    ../src/gui/page/qpageview.cpp \
    ../src/gui/page/qpageview_p.cpp \
    ../src/gui/page/qpagewidget.cpp \
    ../src/gui/page/qpagewidgetmodel.cpp \
    ../src/gui/dockarea.cpp \
    ../src/gui/klusterrubberband.cpp \
    ../src/gui/qcolorbutton.cpp \
    ../src/gui/qextendtabwidget.cpp \
    ../src/gui/qhelpviewer.cpp \
    ../src/gui/qrecentfileaction.cpp \
    ../src/shared/channelcolors.cpp \
    ../src/shared/itemcolors.cpp \
    ../src/shared/utilities.cpp \
    ../src/shared/zoomwindow.cpp

win32: SOURCES += ../src/libinqt5/qstandardpaths_win.cpp
unix: SOURCES += ../src/libinqt5/qstandardpaths_unix.cpp



HEADERS += \
    ../src/gui/page/klusterseparator.h \
    ../src/gui/page/qextenddialog.h \
    ../src/gui/page/qextenddialog_p.h \
    ../src/gui/page/qpagedialog.h \
    ../src/gui/page/qpagedialog_p.h \
    ../src/gui/page/qpagemodel.h \
    ../src/gui/page/qpagemodel_p.h \
    ../src/gui/page/qpageview.h \
    ../src/gui/page/qpageview_p.h \
    ../src/gui/page/qpagewidget.h \
    ../src/gui/page/qpagewidgetmodel.h \
    ../src/gui/page/qpagewidgetmodel_p.h \
    ../src/gui/dockarea.h \
    ../src/gui/klusterrubberband.h \
    ../src/gui/qcolorbutton.h \
    ../src/gui/qextendtabwidget.h \
    ../src/gui/qhelpviewer.h \
    ../src/gui/page/qpagewidget_p.h \
    ../src/gui/qrecentfileaction.h \
    ../src/shared/array.h \
    ../src/shared/channelcolors.h \
    ../src/shared/itemcolors.h \
    ../src/shared/types.h \
    ../src/shared/utilities.h \
    ../src/shared/zoomwindow.h \
    libneurosuite.h

INCLUDEPATH += ../src
INCLUDEPATH += ../src/gui
INCLUDEPATH += ../src/gui/page

CONFIG(debug, debug|release) {
    DESTDIR=$$OUT_PWD/debug
} else {
    DESTDIR=$$OUT_PWD/release
}

unix {
    message('inside unix install')
    target.path = /usr/local/klusters
    INSTALLS += target
}

#klusters.path = /usr/local/klusters
#klusters.files = docs/*
#INSTALLS += klusters
