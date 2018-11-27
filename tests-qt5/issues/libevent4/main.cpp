#include <QtCore/QCoreApplication>
#include <QtQuickTest/quicktest.h>
#include "eventdispatcher.h"
#include "eventdispatcherqpa.h"

int main(int argc, char** argv)
{
	EventDispatcher* d = new EventDispatcher();
	QCoreApplication::setEventDispatcher(d);
#ifdef QTEST_ADD_GPU_BLACKLIST_SUPPORT
	QTEST_ADD_GPU_BLACKLIST_SUPPORT
#endif
#ifdef QTEST_SET_MAIN_SOURCE_PATH
	QTEST_SET_MAIN_SOURCE_PATH
#endif
	return quick_test_main(argc, argv, "issue4", QUICK_TEST_SOURCE_DIR);
}
