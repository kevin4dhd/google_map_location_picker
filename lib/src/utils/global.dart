import 'package:flutter/cupertino.dart';

class Global {}

class Dispositive {
  MediaQueryData _queryData;
  Dispositive({BuildContext context}) {
    _queryData = MediaQuery.of(context);
  }

  double get height {
    return _queryData.size.height;
  }

  double get width {
    return _queryData.size.width;
  }

  bool get isSmall {
    var height = _queryData.size.height;
    return height <= 684;
  }

  bool get isMedium {
    var height = _queryData.size.height;
    return height > 683 && height <= 780;
  }

  bool get isLarge {
    var height = _queryData.size.height;
    return height > 780;
  }
}
