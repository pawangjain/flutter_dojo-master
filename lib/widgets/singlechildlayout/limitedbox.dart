import 'package:flutter/material.dart';
import 'package:flutter_dojo/common/main_title_widget.dart';
import 'package:flutter_dojo/common/subtitle_widget.dart';

class LimitedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MainTitleWidget('LimitedBox基本使用'),
        SubtitleWidget('maxHeight:100，限制高度100'),
        LimitedBox(
          maxHeight: 100,
          child: Container(color: Colors.green),
        ),
        SubtitleWidget('LimitedBox是将child限制在其设定的最大宽高中的，但是这个限定是有条件的。当LimitedBox最大宽度不受限制时，child的宽度就会受到这个最大宽度的限制，同理高度。'),
        LimitedBox(
          maxHeight: 100,
          maxWidth: 100,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.orange,
          ),
        ),
        SubtitleWidget('LimitedBox: maxHeight:100  maxWidth:100'),
        SubtitleWidget('Child: h:200  w:200'),
      ],
    );
  }
}
