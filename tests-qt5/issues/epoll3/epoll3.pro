TARGET   = tst_epoll3
QT       = core network testlib
SOURCES += tst_epoll3.cpp

include(../../../common.pri)

win32: LIBS += $$QMAKE_LIBS_NETWORK
