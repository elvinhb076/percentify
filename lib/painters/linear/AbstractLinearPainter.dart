import 'package:flutter/material.dart';
import 'package:percentify/data/configurations/ShapeConfiguration.dart';
import 'package:percentify/data/configurations/linear/DefaultLinearConfiguration.dart';
import 'package:percentify/data/configurations/linear/ValueLinearConfiguration.dart';

abstract class AbstractLinearPainter extends CustomPainter {
  final BuildContext _context;
  final int _percent;

  ShapeConfiguration? defaultConfiguration;
  ShapeConfiguration? valueConfiguration;

  double? width = 0;

  StrokeCap getStrokeCap();

  AbstractLinearPainter(this._context, this._percent,
      {this.width, ShapeConfiguration? defaultConfiguration, ShapeConfiguration? valueConfiguration}) {
    this.defaultConfiguration = defaultConfiguration ?? DefaultLinearConfiguration();
    this.valueConfiguration = valueConfiguration ?? ValueLinearConfiguration();
  }

  @override
  void paint(Canvas canvas, Size size) {
    var strokeCap = getStrokeCap();
    var originalWidth = width ?? MediaQuery.of(_context).size.width;
    var valueWidth = originalWidth * (_percent ?? 0) / 100;

    Paint paint = Paint();
    paint.color = defaultConfiguration?.backgroundColor as Color;
    paint.strokeWidth = defaultConfiguration?.strokeWidth as double;
    paint.strokeCap = strokeCap;

    Paint valuePaint = Paint();
    valuePaint.color = valueConfiguration?.backgroundColor as Color;
    valuePaint.strokeWidth = valueConfiguration?.strokeWidth as double;
    valuePaint.strokeCap = strokeCap;

    canvas.drawLine(const Offset(0, 0), Offset(originalWidth, 0), paint);

    if (valueWidth > 0) {
      canvas.drawLine(const Offset(0, 0), Offset(valueWidth, 0), valuePaint);
    }

    canvas.restore();
    canvas.save();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
