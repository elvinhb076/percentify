import 'package:flutter/material.dart';
import 'package:percentify/data/configurations/ShapeConfiguration.dart';
import 'package:percentify/painters/linear/AbstractLinearPainter.dart';

class RoundedLinearPainter extends AbstractLinearPainter {
  RoundedLinearPainter(BuildContext context, int percent,
      {double? width, ShapeConfiguration? defaultConfiguration, ShapeConfiguration? valueConfiguration})
      : super(context, percent, width: width, defaultConfiguration: defaultConfiguration, valueConfiguration: valueConfiguration);

  @override
  StrokeCap getStrokeCap() => StrokeCap.round;
}
