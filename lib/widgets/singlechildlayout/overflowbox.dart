import 'package:flutter/material.dart';
import 'package:flutter_dojo/common/main_title_widget.dart';

class OverflowBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MainTitleWidget('OverflowBox基本使用'),
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: Align(
            alignment: const Alignment(1, 1),
            child: SizedBox(
              width: 10,
              height: 20,
              child: OverflowBox(
                minWidth: 0,
                maxWidth: 100,
                minHeight: 0,
                maxHeight: 50,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
