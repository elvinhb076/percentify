import 'package:flutter/material.dart';
import 'package:percentify/data/configurations/linear/DefaultLinearConfiguration.dart';
import 'package:percentify/data/configurations/linear/ValueLinearConfiguration.dart';
import 'package:percentify/painters/linear/RoundedLinearPainter.dart';

// ignore_for_file: must_be_immutable
class RoundedLinearPercentify extends StatefulWidget {
  final int _percent;

  double? width;
  double? strokeWidth;
  double? valueStrokeWidth;

  Color? backgroundColor;
  Color? valueColor;

  Widget? child;

  RoundedLinearPercentify(this._percent,
      {this.width, this.strokeWidth, this.valueStrokeWidth, this.backgroundColor, this.valueColor, this.child, Key? key})
      : super(key: key);

  @override
  _RoundedLinearPercentifyState createState() => _RoundedLinearPercentifyState();
}

class _RoundedLinearPercentifyState extends State<RoundedLinearPercentify> {
  late DefaultLinearConfiguration _defaultConfiguration;
  late ValueLinearConfiguration _valueConfiguration;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _defaultConfiguration = DefaultLinearConfiguration.fromConfig(widget.strokeWidth, widget.backgroundColor);
    _valueConfiguration = ValueLinearConfiguration.fromConfig(widget.valueStrokeWidth, widget.valueColor);
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        child: widget.child,
        painter: RoundedLinearPainter(context, widget._percent,
            width: widget.width, defaultConfiguration: _defaultConfiguration, valueConfiguration: _valueConfiguration));
  }
}
