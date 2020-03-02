import 'package:flutter/material.dart';
import 'package:flutter_dojo/common/main_title_widget.dart';
import 'package:flutter_dojo/common/subtitle_widget.dart';

class PopupMenuButtonWidget extends StatefulWidget {
  @override
  _PopupMenuButtonWidgetState createState() => _PopupMenuButtonWidgetState();
}

enum Selections { java, c, swift, dart }

class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MainTitleWidget('PopupMenuButton基本使用'),
        SubtitleWidget('Icon Style'),
        PopupMenuButton<Selections>(
          icon: Icon(Icons.input),
          onSelected: (Selections result) {},
          itemBuilder: (BuildContext context) => <PopupMenuEntry<Selections>>[
            const PopupMenuItem<Selections>(
              value: Selections.java,
              child: Text('Choose java'),
            ),
            const PopupMenuItem<Selections>(
              value: Selections.c,
              child: Text('Choose c'),
            ),
            const PopupMenuItem<Selections>(
              value: Selections.swift,
              child: Text('Choose swift'),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem<Selections>(
              value: Selections.dart,
              child: Text('Choose dart'),
            ),
          ],
        ),
        SubtitleWidget('Child Style'),
        Center(
          child: PopupMenuButton<Selections>(
            child: Text('PopupMenuButton'),
            onSelected: (Selections result) {},
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Selections>>[
              const PopupMenuItem<Selections>(
                value: Selections.java,
                child: Text('Choose java'),
              ),
              const PopupMenuItem<Selections>(
                value: Selections.c,
                child: Text('Choose c'),
              ),
              const PopupMenuItem<Selections>(
                value: Selections.swift,
                child: Text('Choose swift'),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem<Selections>(
                value: Selections.dart,
                child: Text('Choose dart'),
              ),
            ],
          ),
        ),
        MainTitleWidget('配合ListTile'),
        ListTile(
          title: Text('Title'),
          subtitle: Text('Subtitle'),
          trailing: PopupMenuButton<Selections>(
            initialValue: Selections.dart,
            onSelected: (Selections result) {},
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Selections>>[
              const PopupMenuItem<Selections>(
                value: Selections.java,
                child: Text('Choose java'),
              ),
              const PopupMenuItem<Selections>(
                value: Selections.c,
                child: Text('Choose c'),
              ),
              const PopupMenuItem<Selections>(
                value: Selections.swift,
                child: Text('Choose swift'),
              ),
              const PopupMenuItem<Selections>(
                value: Selections.dart,
                child: Text('Choose dart'),
              ),
            ],
          ),
        ),
        MainTitleWidget('带选中态'),
        ListTile(
          title: Text('Title'),
          subtitle: Text('Subtitle'),
          trailing: PopupMenuButton<String>(
            padding: EdgeInsets.zero,
            onSelected: (value) {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              CheckedPopupMenuItem<String>(
                value: 'item1',
                checked: true,
                child: Text('item1'),
              ),
              CheckedPopupMenuItem<String>(
                value: 'item2',
                enabled: false,
                checked: false,
                child: Text('item2'),
              ),
              CheckedPopupMenuItem<String>(
                value: 'item3',
                checked: false,
                child: Text('item3'),
              ),
              CheckedPopupMenuItem<String>(
                value: 'item4',
                checked: false,
                child: Text('item4'),
              ),
            ],
          ),
        ),
        MainTitleWidget('PopupMenuButton修改颜色'),
        SubtitleWidget('通过Theme来修改背景色'),
        Theme(
          data: ThemeData(cardColor: Colors.blue),
          child: PopupMenuButton<Selections>(
            onSelected: (Selections result) {},
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Selections>>[
              const PopupMenuItem<Selections>(
                value: Selections.java,
                child: Text('Choose java'),
              ),
              const PopupMenuItem<Selections>(
                value: Selections.c,
                child: Text('Choose c'),
              ),
              const PopupMenuItem<Selections>(
                value: Selections.swift,
                child: Text('Choose swift'),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem<Selections>(
                value: Selections.dart,
                child: Text('Choose dart'),
              ),
            ],
          ),
        ),
        MainTitleWidget('通过showMenu直接展示菜单并控制显示位置'),
        RaisedButton(
          onPressed: () {
            showPopMenu();
          },
          child: Text('Show'),
        ),
      ],
    );
  }

  showPopMenu() async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100, 100, 100, 100),
      items: <PopupMenuItem<String>>[
        new PopupMenuItem<String>(value: 'value01', child: new Text('Item One')),
        new PopupMenuItem<String>(value: 'value02', child: new Text('Item Two')),
        new PopupMenuItem<String>(value: 'value03', child: new Text('Item Three')),
        new PopupMenuItem<String>(value: 'value04', child: new Text('I am Item Four'))
      ],
    );
  }
}
