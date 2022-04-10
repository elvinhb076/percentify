import 'package:flutter/material.dart';
import 'package:percentify/data/configurations/ShapeConfiguration.dart';

import 'AbstractLinearPainter.dart';

class RectLinearPainter extends AbstractLinearPainter {
  RectLinearPainter(BuildContext context, int percent,
      {double? width, ShapeConfiguration? defaultConfiguration, ShapeConfiguration? valueConfiguration})
      : super(context, percent, width: width, defaultConfiguration: defaultConfiguration, valueConfiguration: valueConfiguration);

  @override
  StrokeCap getStrokeCap() => StrokeCap.square;
}
