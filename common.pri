CONFIG  += console link_prl
CONFIG  -= app_bundle
TEMPLATE = app
DESTDIR  = $$PWD/bin

lessThan(QT_MAJOR_VERSION, 5) {
	CONFIG += qtestlib
}
else {
	DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0
}

exists($$PWD/../local.pri): include($$PWD/../local.pri)
