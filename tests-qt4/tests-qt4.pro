TEMPLATE = subdirs

SUBDIRS = \
	qeventdispatcher \
	qeventloop \
	qtimer \
	issues

# Benchmarks appeared in Qt 4.6
greaterThan(QT_MINOR_VERSION, 5) {
	SUBDIRS += events
}

# qsocketnotifier depends on Qt 4.8's privates
unix:greaterThan(QT_MINOR_VERSION, 7) {
	greaterThan(QT_PATCH_VERSION, 4) {
		# Fix forQt 4.8.5+
		SUBDIRS += qsocketnotifier-4.8.5
	}
	else {
		SUBDIRS += qsocketnotifier
	}
}
