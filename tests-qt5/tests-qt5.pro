TEMPLATE = subdirs

SUBDIRS = \
	qeventdispatcher \
	qeventloop \
	qtimer \
	events \
	issues

unix: SUBDIRS += qsocketnotifier
