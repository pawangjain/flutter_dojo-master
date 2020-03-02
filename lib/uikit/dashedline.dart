import 'package:flutter/material.dart';
import 'package:flutter_dojo/common/main_title_widget.dart';

class DashedLineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MainTitleWidget('Dashed Lines with SizedBox'),
        Container(
          margin: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text('Dashed'),
              Expanded(
                child: DashedLine(
                  height: 2,
                  color: Colors.red,
                ),
              ),
              Text('Line'),
            ],
          ),
        ),
        MainTitleWidget('Dashed Lines with CustomPaint'),
        Container(
          margin: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text('Dashed'),
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return CustomPaint(
                      size: Size(constraints.maxWidth, 10),
                      painter: DashPainter(),
                    );
                  },
                ),
              ),
              Text('Line'),
            ],
          ),
        ),
      ],
    );
  }
}

class DashedLine extends StatelessWidget {
  final double height;
  final Color color;

  const DashedLine({this.height = 1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final double dashWidth = 10;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

class DashPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 2
      ..isAntiAlias = true
      ..color = Colors.red;

    var max = size.width;
    var height = size.height / 2;
    var dashWidth = 5;
    var dashSpace = 5;
    double startX = 0;
    final space = (dashSpace + dashWidth);

    while (startX < max) {
      canvas.drawLine(
        Offset(startX, height),
        Offset(startX + dashWidth, height),
        paint,
      );
      startX += space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
