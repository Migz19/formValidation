import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRoundIcnBtn extends StatefulWidget {
  final Icon _icon;
  final Function _onpressed;
  final Color _backgroundColor;
  final num _radius;

  @override
  State<CustomRoundIcnBtn> createState() => _CustomRoundIcnBtnState();

  CustomRoundIcnBtn({
    required onpressed,
    required icon,
    backgroundColor = Colors.white,
    required radius,
  })  : _icon = icon,
        _onpressed = onpressed,
        _radius = radius,
        _backgroundColor = backgroundColor;
}

class _CustomRoundIcnBtnState extends State<CustomRoundIcnBtn> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: widget._backgroundColor,
        radius: widget._radius.toDouble(),

        child: IconButton(
            icon: widget._icon,
          onPressed:() {
            widget._onpressed;
          }),
        );
  }
}
