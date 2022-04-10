import 'package:flutter/material.dart';
import 'package:percentify/data/configurations/linear/DefaultLinearConfiguration.dart';
import 'package:percentify/data/configurations/linear/ValueLinearConfiguration.dart';
import 'package:percentify/painters/linear/RectLinearPainter.dart';

// ignore: must_be_immutable
class RectLinearPercentify extends StatefulWidget {
  final int _percent;

  double? width;
  double? strokeWidth;
  double? valueStrokeWidth;

  Color? backgroundColor;
  Color? valueColor;

  Widget? child;

  RectLinearPercentify(this._percent,
      {this.width, this.strokeWidth, this.valueStrokeWidth, this.backgroundColor, this.valueColor, this.child, Key? key})
      : super(key: key);

  @override
  _RectLinearPercentifyState createState() => _RectLinearPercentifyState();
}

class _RectLinearPercentifyState extends State<RectLinearPercentify> {
  late DefaultLinearConfiguration _defaultConfiguration;
  late ValueLinearConfiguration _valueConfiguration;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _defaultConfiguration = DefaultLinearConfiguration.fromConfig(widget.strokeWidth, widget.backgroundColor);
    _defaultConfiguration = DefaultLinearConfiguration.fromConfig(widget.valueStrokeWidth, widget.valueColor);
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        child: widget.child,
        painter: RectLinearPainter(context, widget._percent,
            width: widget.width, defaultConfiguration: _defaultConfiguration, valueConfiguration: _valueConfiguration));
  }
}
