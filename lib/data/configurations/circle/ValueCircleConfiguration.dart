import 'package:flutter/cupertino.dart';
import 'package:percentify/data/constants/ConfigurationData.dart';
import '../ShapeConfiguration.dart';

class ValueCircleConfiguration extends ShapeConfiguration {
  ValueCircleConfiguration() : super(backgroundColor: ConfigurationData.valueBackgroundColor, strokeWidth: ConfigurationData.valueStrokeWidth);

  factory ValueCircleConfiguration.fromConfig(double? valueStrokeWidth, Color? valueColor) {
    return ValueCircleConfiguration()
      ..strokeWidth = valueStrokeWidth ?? ConfigurationData.valueStrokeWidth
      ..backgroundColor = valueColor ?? ConfigurationData.valueBackgroundColor;
  }
}
