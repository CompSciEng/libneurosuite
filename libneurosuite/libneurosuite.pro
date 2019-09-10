#-------------------------------------------------
#
# Project created by QtCreator 2019-08-09T18:34:01
#
#-------------------------------------------------

QT       += widgets xml printsupport webengine webenginewidgets

QT       -= gui



TARGET = libneurosuite
TEMPLATE = lib

DEFINES += LIBNEUROSUITE_LIBRARY

DEFINES += NEUROSUITE_BUILD_NEUROSUITE_LIB

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += ../src

SOURCES += \
    ../src/gui/dockarea.cpp \
    ../src/gui/klusterrubberband.cpp \
    ../src/gui/qcolorbutton.cpp \
    ../src/gui/qextendtabwidget.cpp \
    ../src/gui/qhelpviewer.cpp \
    ../src/gui/qrecentfileaction.cpp \
    ../src/shared/channelcolors.cpp \
    ../src/shared/itemcolors.cpp \
    ../src/shared/utilities.cpp \
    ../src/shared/zoomwindow.cpp \
    ../src/libinqt5/qstandardpaths_win.cpp \
    ../src/gui/page/klusterseparator.cpp \
    ../src/gui/page/qextenddialog.cpp \
    ../src/gui/page/qpagedialog.cpp \
    ../src/gui/page/qpagemodel.cpp \
    ../src/gui/page/qpageview.cpp \
    ../src/gui/page/qpageview_p.cpp \
    ../src/gui/page/qpagewidget.cpp \
    ../src/gui/page/qpagewidgetmodel.cpp

HEADERS += \
        libneurosuite.h \
        libneurosuite_global.h \ 
    ../src/gui/dockarea.h \
    ../src/gui/klusterrubberband.h \
    ../src/gui/qcolorbutton.h \
    ../src/gui/qextendtabwidget.h \
    ../src/gui/qhelpviewer.h \
    ../src/gui/qrecentfileaction.h \
    ../src/shared/array.h \
    ../src/shared/channelcolors.h \
    ../src/shared/itemcolors.h \
    ../src/shared/types.h \
    ../src/shared/utilities.h \
    ../src/shared/zoomwindow.h \
    ../src/libinqt5/qstandardpaths.h \
    ../src/libneurosuite_export.h \
    libneurosuite.h \
    libneurosuite_global.h \
    libneurosuite.h \
    libneurosuite_global.h \
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
    ../src/gui/page/qpagewidget_p.h \
    ../src/gui/page/qpagewidgetmodel.h \
    ../src/gui/page/qpagewidgetmodel_p.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

RESOURCES += \
    ../src/gui/libneurosuite-cursors.qrc \
    ../src/gui/libneurosuite-icons.qrc

DISTFILES += \
    ../src/gui/qhelpviewer.bak \
    ../src/gui/cursors/add_event_cursor.png \
    ../src/gui/cursors/measure_cursor.png \
    ../src/gui/cursors/select_channels_cursor.png \
    ../src/gui/cursors/select_event_cursor.png \
    ../src/gui/cursors/select_time_cursor.png \
    ../src/gui/cursors/time_line_cursor.png \
    ../src/gui/cursors/zoom_cursor.png \
    ../src/gui/icons/configure.png \
    ../src/gui/icons/dialog-cancel.png \
    ../src/gui/icons/dialog-close.png \
    ../src/gui/icons/dialog-ok.png \
    ../src/gui/icons/dialog-ok-apply.png \
    ../src/gui/icons/document-close.png \
    ../src/gui/icons/document-new.png \
    ../src/gui/icons/document-open.png \
    ../src/gui/icons/document-open-recent.png \
    ../src/gui/icons/document-print.png \
    ../src/gui/icons/document-save.png \
    ../src/gui/icons/document-save-all.png \
    ../src/gui/icons/document-save-as.png \
    ../src/gui/icons/edit-redo.png \
    ../src/gui/icons/edit-undo.png \
    ../src/gui/icons/folder-open.png \
    ../src/gui/icons/help-contents.png \
    ../src/gui/icons/window-close.png \
    ../src/gui/icons/AUTHORS \
    ../src/gui/icons/COPYING
