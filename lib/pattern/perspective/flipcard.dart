import 'dart:math';

import 'package:flutter/material.dart';

class FlipCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget child = Container(
      width: 150,
      height: 180,
      color: Colors.blue,
      child: Center(
        child: Text(
          'FlipCard',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.003)
            ..rotateX(pi / 4),
          alignment: Alignment.bottomCenter,
          child: ClipRect(
            child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 0.5,
              child: child,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.0),
        ),
        ClipRect(
          child: Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.5,
            child: child,
          ),
        ),
      ],
    );
  }
}
