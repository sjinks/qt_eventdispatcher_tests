TEMPLATE = subdirs
SUBDIRS  = \
	libevent14 \
	epoll3

greaterThan(QT_MAJOR_VERSION, 4) {
	SUBDIRS += \
		libevent6 \
		libevent4
}
