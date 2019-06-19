
import 'package:flutter/widgets.dart';

class Multiscreen {
  static int _guideWidth;
  static double _screenWidth = 0;
  static Multiscreen _instance;

  Multiscreen._(BuildContext context, int guideWidth) {
    _guideWidth = guideWidth;
    _screenWidth = MediaQuery.of(context).size.width;
  }

  static init(BuildContext context, int guideWidth) {
    _instance = Multiscreen._(context, guideWidth);
  }

  static Multiscreen get instance => _instance;

  double resize(double origin) {
    if (_guideWidth <= 0) {
      throw Exception;
    }
    if (_screenWidth == 0) {
      throw Exception;
    }

    double ret = _screenWidth / _guideWidth * origin;

    return ret;
  }
}
