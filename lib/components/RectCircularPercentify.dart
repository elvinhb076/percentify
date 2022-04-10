import 'package:flutter/material.dart';
import 'package:percentify/data/configurations/circle/DefaultCircleConfiguration.dart';
import 'package:percentify/data/configurations/circle/ValueCircleConfiguration.dart';
import 'package:percentify/data/constants/ConfigurationData.dart';
import 'package:percentify/painters/circle/AbstractCircularPainter.dart';
import 'package:percentify/painters/circle/RectCircularPainter.dart';
import 'package:percentify/painters/circle/RoundedCircularPainter.dart';

// ignore: must_be_immutable
class RectCircularPercentify extends StatefulWidget {
  final double _percent;

  //child
  Widget? child;

  //colors
  Color? backgroundColor;
  Color? valueColor;

  //sizes
  double? valueStrokeWidth;
  double? strokeWidth;

  RectCircularPercentify(this._percent, {Key? key, this.child, this.valueStrokeWidth, this.backgroundColor, this.valueColor}) : super(key: key);

  @override
  _RectCircularPercentifyState createState() => _RectCircularPercentifyState();
}

class _RectCircularPercentifyState extends State<RectCircularPercentify> {
  late DefaultCircleConfiguration _defaultCircleConfiguration;
  late ValueCircleConfiguration _valueCircleConfiguration;

  @override
  void initState() {
    super.initState();

    _defaultCircleConfiguration = DefaultCircleConfiguration.fromConfig(widget.strokeWidth, widget.backgroundColor);
    _valueCircleConfiguration = ValueCircleConfiguration.fromConfig(widget.valueStrokeWidth, widget.valueColor);
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        foregroundPainter:
            RectCircularPainter(widget._percent, defaultConfiguration: _defaultCircleConfiguration, valueConfiguration: _valueCircleConfiguration),
        // this will add custom painter after child
        child: Center(child: widget.child ?? const SizedBox()));
  }
}
