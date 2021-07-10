import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonRounded extends StatefulWidget {
  final Widget child;
  final Color backgroundColor;
  final Color borderColor;
  final Color transitionColor;
  final double height;
  final double borderRadiusCircular;
  final Function onPressed;
  const ButtonRounded(
      {Key key,
      @required this.child,
      @required this.onPressed,
      this.borderColor,
      this.borderRadiusCircular,
      this.transitionColor,
      this.backgroundColor,
      this.height})
      : super(key: key);

  @override
  _ButtonRoundedState createState() => _ButtonRoundedState();
}

class _ButtonRoundedState extends State<ButtonRounded> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 55,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: widget.backgroundColor ?? Color.fromRGBO(84, 28, 249, 1),
              onPrimary: widget.transitionColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                      color: widget.borderColor ??
                          Color.fromRGBO(84, 28, 249, 1)))),
          onPressed: widget.onPressed,
          child: widget.child),
    );
  }
}
