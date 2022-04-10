import 'dart:math';
import 'package:flutter/material.dart';
import 'package:percentify/data/configurations/circle/DefaultCircleConfiguration.dart';
import 'package:percentify/data/configurations/circle/ValueCircleConfiguration.dart';

abstract class AbstractCircularPainter extends CustomPainter {
  final double _percent;
  late DefaultCircleConfiguration defaultCircleConfiguration;
  late ValueCircleConfiguration valueCircleConfiguration;

  StrokeCap getStrokeCap();

  AbstractCircularPainter(this._percent, {DefaultCircleConfiguration? defaultConfiguration, ValueCircleConfiguration? valueConfiguration}) {
    defaultCircleConfiguration = defaultConfiguration ?? DefaultCircleConfiguration();
    valueCircleConfiguration = valueConfiguration ?? ValueCircleConfiguration();
  }

  @override
  void paint(Canvas canvas, Size size) {
    //this is base circle
    Paint outerCircle = Paint();
    outerCircle.strokeWidth = defaultCircleConfiguration.strokeWidth;
    outerCircle.color = defaultCircleConfiguration.backgroundColor;
    outerCircle.style = PaintingStyle.stroke;

    Paint completeArc = Paint();
    completeArc.strokeWidth = valueCircleConfiguration.strokeWidth;
    completeArc.color = valueCircleConfiguration.backgroundColor;
    completeArc.style = PaintingStyle.stroke;
    completeArc.strokeCap = getStrokeCap();

    Offset center = Offset(size.width / 2, size.height / 2);

    double radius = min(size.width / 2, size.height / 2) - 10;

    canvas.drawCircle(center, radius, outerCircle); // this draws main outer circle

    double angle = 2 * pi * (_percent / 100);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2, angle, false, completeArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
