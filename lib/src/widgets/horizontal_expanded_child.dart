import 'package:flutter/cupertino.dart';

class HorizontalExpandedChild extends StatelessWidget {
  final Widget child;
  HorizontalExpandedChild({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: child),
      ],
    );
  }
}
