QT += core gui
QT += gui charts

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    SaveLoad.cpp \
    addition.cpp \
    constante.cpp \
    division.cpp \
    interactionutilisateur.cpp \
    main.cpp \
    mainwindowgen.cpp \
    mainwindow.cpp \
    multiplication.cpp \
    operation.cpp \
    operationunaire.cpp \
    soustraction.cpp \
    symboletable.cpp \
    variable.cpp \
    window.cpp \
    IHM3D.cpp \
    surfacegraph.cpp \
    carre.cpp \
    inverse.cpp \
    logneperien.cpp \
    oppose.cpp \
    puissance.cpp \
    racinecarre.cpp \
    valeurabsolue.cpp

HEADERS += \
    SaveLoad.h \
    Expression.h \
    IHM3D.h \
    addition.h \
    constante.h \
    division.h \
    inverse.h \
    logneperien.h \
    interactionutilisateur.h \
    mainwindowgen.h \
    mainwindow.h \
    multiplication.h \
    operation.h \
    operationunaire.h \
    oppose.h \
    puissance.h \
    racinecarre.h \
    valeurabsolue.h \
    soustraction.h \
    symboletable.h \
    variable.h \
    window.h \
    surfacegraph.h

FORMS += \
    mainwindowgen.ui \
    mainwindow.ui \
    window.ui


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

QT += widgets
requires(qtConfig(combobox))

RESOURCES += surface.qrc \
    surface.qrc

OTHER_FILES += doc/src/* \
               doc/images/*
 INCLUDEPATH += ../../../include

 LIBS += -L$$OUT_PWD/../../../lib
TEMPLATE = app

 QT += datavisualization
 contains(TARGET, qml.*) {
 QT += qml quick
  }

 target.path = $$[QT_INSTALL_EXAMPLES]/datavisualization/$$TARGET
 INSTALLS += target
