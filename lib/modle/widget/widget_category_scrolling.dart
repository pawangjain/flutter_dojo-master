import 'package:flutter/material.dart';
import 'package:flutter_dojo/common/base_widget.dart';
import 'package:flutter_dojo/common/demo_item.dart';
import 'package:flutter_dojo/widgets/scrolling/customscrollview.dart';
import 'package:flutter_dojo/widgets/scrolling/draggablescrollablesheet.dart';
import 'package:flutter_dojo/widgets/scrolling/gridview.dart';
import 'package:flutter_dojo/widgets/scrolling/listview.dart';
import 'package:flutter_dojo/widgets/scrolling/nestedscrollview.dart';
import 'package:flutter_dojo/widgets/scrolling/notificationlistener.dart';
import 'package:flutter_dojo/widgets/scrolling/pageview.dart';
import 'package:flutter_dojo/widgets/scrolling/refreshindicator.dart';
import 'package:flutter_dojo/widgets/scrolling/scrollbar.dart';
import 'package:flutter_dojo/widgets/scrolling/scrollconfiguration.dart';
import 'package:flutter_dojo/widgets/scrolling/scrollcontroller.dart';
import 'package:flutter_dojo/widgets/scrolling/singlechildscrollview.dart';
import 'package:flutter_dojo/widgets/touchinteractions/scrollable.dart';

List<DemoItem> buildScrollingDemoItems(String codePath) {
  return [
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'CustomScrollView',
      subtitle: 'A ScrollView that creates custom scroll effects using slivers.',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html',
      buildRoute: (context) => BaseWidget('CustomScrollView', codePath, CustomScrollViewWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'DraggableScrollableSheet',
      subtitle: 'DraggableScrollableSheet',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/DraggableScrollableSheet-class.html',
      buildRoute: (context) => BaseWidget('DraggableScrollableSheet', codePath, DraggableScrollableSheetWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'GridView',
      subtitle:
          'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/GridView-class.html',
      buildRoute: (context) => BaseWidget('GridView', codePath, GridViewWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'ListView',
      subtitle:
          'A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the ListView.',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/ListView-class.html',
      buildRoute: (context) => BaseWidget('ListView', codePath, ListViewWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'NestedScrollView',
      subtitle:
          'A scrolling view inside of which can be nested other scrolling views, with their scroll positions being intrinsically linked.',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/NestedScrollView-class.html',
      buildRoute: (context) => BaseWidget('NestedScrollView', codePath, NestedScrollViewWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'NotificationListener',
      subtitle: 'A widget that listens for Notifications bubbling up the tree.',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/NotificationListener-class.html',
      buildRoute: (context) => BaseWidget('NotificationListener', codePath, NotificationListenerWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'PageView',
      subtitle: 'A scrollable list that works page by page.',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/PageView-class.html',
      buildRoute: (context) => BaseWidget('PageView', codePath, PageViewWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'RefreshIndicator',
      subtitle: 'A Material Design pull-to-refresh wrapper for scrollables.',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/RefreshIndicator-class.html',
      buildRoute: (context) => BaseWidget('RefreshIndicator', codePath, RefreshIndicatorWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'ScrollConfiguration',
      subtitle: 'Controls how Scrollable widgets behave in a subtree.',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/ScrollConfiguration-class.html',
      buildRoute: (context) => BaseWidget('ScrollConfiguration', codePath, ScrollConfigurationWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'ScrollController',
      subtitle: 'ScrollController',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/ScrollController-class.html',
      buildRoute: (context) => BaseWidget('ScrollController', codePath, ScrollControllerWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'Scrollable',
      subtitle:
          'Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays the children, is constructed.',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/Scrollable-class.html',
      buildRoute: (context) => BaseWidget('Scrollable', codePath, ScrollableWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'Scrollbar',
      subtitle:
          'A Material Design scrollbar. A scrollbar indicates which portion of a Scrollable widget is actually visible.',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/Scrollbar-class.html',
      buildRoute: (context) => BaseWidget('Scrollbar', codePath, ScrollbarWidget()),
    ),
    DemoItem(
      icon: Icons.screen_rotation,
      title: 'SingleChildScrollView',
      subtitle:
          'A box in which a single widget can be scrolled. This widget is useful when you have a single box that will normally be entirely visible, for example a clock face in a time picker, but you need to make sure it can be scrolled if the container gets too small in one axis (the scroll direction).',
      documentationUrl: 'https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html',
      buildRoute: (context) => BaseWidget('SingleChildScrollView', codePath, SingleChildScrollViewWidget()),
    )
  ];
}
