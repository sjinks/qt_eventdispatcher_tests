# qt_eventdispatcher_tests

Tests for Qt Event Dispatchers.

**WARNING:** this is not a standalone library. This repository is intended to be used as a submodule.
Currently it is used by the following repositories:
* [qt_eventdispatcher_libevent](https://github.com/sjinks/qt_eventdispatcher_libevent) — libevent-base event dispatcher
[![Build Status](https://secure.travis-ci.org/sjinks/qt_eventdispatcher_libev.png)](http://travis-ci.org/sjinks/qt_eventdispatcher_libev);
* [qt_eventdispatcher_libev](https://github.com/sjinks/qt_eventdispatcher_libev) — libev-based event dispatcher
[![Build Status](https://secure.travis-ci.org/sjinks/qt_eventdispatcher_libev.png)](http://travis-ci.org/sjinks/qt_eventdispatcher_libevent);
* [qt_eventdispatcher_epoll](https://github.com/sjinks/qt_eventdispatcher_libevent) — epoll-based event dispatcher
[![Build Status](https://secure.travis-ci.org/sjinks/qt_eventdispatcher_libev.png)](http://travis-ci.org/sjinks/qt_eventdispatcher_epoll).

## Internals

All tests rely upon presence of a file called `eventdispatcher.h` which is supposed to look like this:

```c++
#ifndef EVENTDISPATCHER_H
#define EVENTDISPATCHER_H

#include <QtCore/QAbstractEventDispatcher>

class EventDispatcher : public QAbstractEventDispatcher {
	Q_OBJECT
public:
	explicit EventDispatcher(QObject* parent) : QAbstractEventDispatcher(parent) {}
};

#endif // EVENTDISPATCHER_H
```

The file **must** define a class called `EventDispatcher` (because there is otherwise no way to guess
the name of the event dispatcher to test). This class **must** be derived from the event dispatcher to be tested
(for example, if `EventDispatcherLibEvent` is to be tested, `EventDispatcher` must be derived from `EventDispatcherLibEvent`).

If you need to specify any external dependencies, create a file `local.pri` one level above this directory:
all test cases `include()` this file if it exists.

