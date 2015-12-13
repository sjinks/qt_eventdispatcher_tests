TARGET   = tst_qsocketnotifier
QT       = core network testlib
HEADERS  = private/qabstractsocketengine_p.h private/qnativesocketengine_p.h private/qnet_unix_p.h
SOURCES  = tst_qsocketnotifier.cpp qabstractsocketengine.cpp  qnativesocketengine.cpp  qnativesocketengine_unix.cpp
DESTDIR  = ../../..

INCLUDEPATH += $$PWD/private

include(../../common.pri)
