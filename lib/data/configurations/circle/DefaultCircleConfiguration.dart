import 'package:flutter/material.dart';
import 'package:percentify/data/constants/ConfigurationData.dart';
import '../ShapeConfiguration.dart';

class DefaultCircleConfiguration extends ShapeConfiguration {

  DefaultCircleConfiguration() : super(backgroundColor: ConfigurationData.backgroundColor, strokeWidth: ConfigurationData.strokeWidth);

  factory DefaultCircleConfiguration.fromConfig(double? strokeWidth,Color? backgroundColor){
    return DefaultCircleConfiguration()
      ..strokeWidth = strokeWidth ?? ConfigurationData.strokeWidth
      ..backgroundColor = backgroundColor ?? ConfigurationData.backgroundColor;
  }
}

