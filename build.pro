TEMPLATE = subdirs

greaterThan(QT_MAJOR_VERSION, 4) {
	SUBDIRS += tests-qt5
}
else {
	SUBDIRS += tests-qt4
}
