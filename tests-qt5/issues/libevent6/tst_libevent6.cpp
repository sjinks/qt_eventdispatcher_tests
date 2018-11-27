#include <QtCore/QCoreApplication>
#include <QtTest/QTest>
#include "eventdispatcher.h"

static QAbstractEventDispatcher* dispatcher = 0;

class LibEventIssue6Test : public QObject {
	Q_OBJECT
private Q_SLOTS:
	void testCase()
	{
		QAbstractEventDispatcher* actual = QCoreApplication::eventDispatcher();
		QCOMPARE(actual, dispatcher);
	}
};

int main(int argc, char** argv)
{
#if QT_VERSION < 0x050000
	EventDispatcher d;
	dispatcher = &d;
#else
	dispatcher = new EventDispatcher();
	QCoreApplication::setEventDispatcher(dispatcher);
#endif
	QCoreApplication app(argc, argv);
	LibEventIssue6Test t;
	return QTest::qExec(&t, argc, argv);
}

#include "tst_libevent6.moc"
