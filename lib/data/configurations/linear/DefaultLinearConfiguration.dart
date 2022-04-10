import 'dart:ui';

import 'package:percentify/data/configurations/ShapeConfiguration.dart';
import 'package:percentify/data/constants/ConfigurationData.dart';

class DefaultLinearConfiguration extends ShapeConfiguration {
  DefaultLinearConfiguration() : super(backgroundColor: ConfigurationData.backgroundColor, strokeWidth: ConfigurationData.strokeWidth);

  factory DefaultLinearConfiguration.fromConfig(double? strokeWidth, Color? backgroundColor) {
    return DefaultLinearConfiguration()
      ..backgroundColor = backgroundColor ?? ConfigurationData.backgroundColor
      ..strokeWidth = ConfigurationData.strokeWidth;
  }
}
