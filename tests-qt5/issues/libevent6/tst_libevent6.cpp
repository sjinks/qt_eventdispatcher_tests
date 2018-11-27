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
	dispatcher = new EventDispatcher();
	QCoreApplication::setEventDispatcher(dispatcher);
	QCoreApplication app(argc, argv);
	LibEventIssue6Test t;
	return QTest::qExec(&t, argc, argv);
}

#include "tst_libevent6.moc"
