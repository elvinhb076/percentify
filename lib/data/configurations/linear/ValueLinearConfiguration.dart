import 'package:flutter/material.dart';
import 'package:percentify/data/constants/ConfigurationData.dart';
import '../ShapeConfiguration.dart';

class ValueLinearConfiguration extends ShapeConfiguration {
  ValueLinearConfiguration() : super(backgroundColor: ConfigurationData.valueBackgroundColor, strokeWidth: ConfigurationData.valueStrokeWidth);

  factory ValueLinearConfiguration.fromConfig(double? strokeWidth, Color? backgroundColor) {
    return ValueLinearConfiguration()
      ..backgroundColor = backgroundColor ?? ConfigurationData.valueBackgroundColor
      ..strokeWidth = ConfigurationData.valueStrokeWidth;
  }
}
