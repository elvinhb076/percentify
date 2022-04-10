import 'dart:ui';

import 'package:percentify/data/configurations/circle/DefaultCircleConfiguration.dart';
import 'package:percentify/data/configurations/circle/ValueCircleConfiguration.dart';
import 'package:percentify/painters/circle/AbstractCircularPainter.dart';

class RectCircularPainter extends AbstractCircularPainter {
  RectCircularPainter(double percent, {double? width, DefaultCircleConfiguration? defaultConfiguration, ValueCircleConfiguration? valueConfiguration})
      : super(percent, defaultConfiguration: defaultConfiguration, valueConfiguration: valueConfiguration);

  @override
  StrokeCap getStrokeCap() => StrokeCap.square;
}
