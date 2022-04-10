import 'dart:ui';

import 'package:percentify/data/configurations/circle/DefaultCircleConfiguration.dart';
import 'package:percentify/data/configurations/circle/ValueCircleConfiguration.dart';
import 'package:percentify/painters/circle/AbstractCircularPainter.dart';

class RoundedCircularPainter extends AbstractCircularPainter {
  RoundedCircularPainter(double percent,
      {double? width, DefaultCircleConfiguration? defaultConfiguration, ValueCircleConfiguration? valueConfiguration})
      : super(percent, defaultConfiguration: defaultConfiguration, valueConfiguration: valueConfiguration);

  @override
  StrokeCap getStrokeCap() => StrokeCap.round;
}
