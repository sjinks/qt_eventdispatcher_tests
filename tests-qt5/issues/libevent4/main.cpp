#include <QtQuickTest/quicktest.h>
#include "eventdispatcher.h"
#include "eventdispatcherqpa.h"

int main(int argc, char** argv)
{
	EventDispatcher* d = new EventDispatcher();
	QCoreApplication::setEventDispatcher(d);
	QTEST_ADD_GPU_BLACKLIST_SUPPORT
	QTEST_SET_MAIN_SOURCE_PATH
	return quick_test_main(argc, argv, "issue4", QUICK_TEST_SOURCE_DIR);
}
