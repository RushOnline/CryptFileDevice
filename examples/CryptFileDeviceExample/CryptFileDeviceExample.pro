#-------------------------------------------------
#
# Project created by QtCreator 2014-09-21T15:21:49
#
#-------------------------------------------------

QT       += core
CONFIG += console
CONFIG += link_pkgconfig
PKGCONFIG += libcrypto

greaterThan(QT_MAJOR_VERSION, 4): CONFIG += c++11
lessThan(5, QT_MAJOR_VERSION): QMAKE_CXXFLAGS += -std=c++11 # -std=c++0x

TARGET = CryptFileDeviceExample
TEMPLATE = app

SRCPATH = $$PWD/../../src

INCLUDEPATH += $$SRCPATH

SOURCES += main.cpp \
    $$SRCPATH/cryptfiledevice.cpp

HEADERS  += \
    $$SRCPATH/cryptfiledevice.h

#openssl
win32 {
  INCLUDEPATH += c:/OpenSSL-Win32/include
  LIBS += -Lc:/OpenSSL-Win32/bin -llibeay32
}
