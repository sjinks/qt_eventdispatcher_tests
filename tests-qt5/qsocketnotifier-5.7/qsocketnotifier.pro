TARGET   = tst_qsocketnotifier
QT       = core-private network-private testlib network
SOURCES  = tst_qsocketnotifier.cpp qabstractsocketengine.cpp qnativesocketengine.cpp
HEADERS  = qabstractsocketengine_p.h qnativesocketengine_p.h
DESTDIR  = ../../..

win32: SOURCES += qnativesocketengine_win.cpp
unix:  SOURCES += qnativesocketengine_unix.cpp
unix:  HEADERS += qnet_unix_p.h

include(../../common.pri)
