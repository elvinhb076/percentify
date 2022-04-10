import 'package:flutter/material.dart';
import 'package:percentify/data/configurations/circle/DefaultCircleConfiguration.dart';
import 'package:percentify/data/configurations/circle/ValueCircleConfiguration.dart';
import 'package:percentify/painters/circle/RoundedCircularPainter.dart';

// ignore: must_be_immutable
class RoundedCircularPercentify extends StatefulWidget {
  final double _percent;

  //child
  Widget? child;

  //colors
  Color? backgroundColor;
  Color? valueColor;

  //sizes
  double? valueStrokeWidth;
  double? strokeWidth;

  RoundedCircularPercentify(this._percent, {Key? key, this.child, this.valueStrokeWidth, this.backgroundColor, this.valueColor}) : super(key: key);

  @override
  _RoundedCircularPercentifyState createState() => _RoundedCircularPercentifyState();
}

class _RoundedCircularPercentifyState extends State<RoundedCircularPercentify> {
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
            RoundedCircularPainter(widget._percent, defaultConfiguration: _defaultCircleConfiguration, valueConfiguration: _valueCircleConfiguration),
        // this will add custom painter after child
        child: Center(child: widget.child ?? const SizedBox()));
  }
}
