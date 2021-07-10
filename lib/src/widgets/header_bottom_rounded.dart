import 'package:flutter/cupertino.dart';
import 'package:google_map_location_picker/src/utils/global.dart';

class HeaderBottomRounded extends StatelessWidget {
  final Widget child;
  HeaderBottomRounded({this.child});
  @override
  Widget build(BuildContext context) {
    var dispositive = Dispositive(context: context);
    double safeArea = dispositive.isLarge ? 42 : 22;
    return Row(
      children: [
        Expanded(
          child: Container(
              padding: EdgeInsets.only(top: (30.0 + safeArea), bottom: 30),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(84, 28, 249, 1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60))),
              child: child),
        ),
      ],
    );
  }
}
