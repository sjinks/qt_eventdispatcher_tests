TARGET   = tst_qsocketnotifier
QT       = core-private network-private testlib network
SOURCES  = tst_qsocketnotifier.cpp qabstractsocketengine.cpp qnativesocketengine.cpp qnativesocketengine_unix.cpp
HEADERS  = qabstractsocketengine_p.h qnativesocketengine_p.h
DESTDIR  = ../../..

include(../../common.pri)
