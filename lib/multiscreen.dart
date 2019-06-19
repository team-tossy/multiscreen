
import 'package:flutter/widgets.dart';

/// If you can not create a GUI guide for each resolution or device,
/// you can create one GUI guide and use Multiscreen for development.
class Multiscreen {
  static int _guideWidth;
  static double _screenWidth = 0;
  static Multiscreen _instance;

  Multiscreen._(BuildContext context, int guideWidth) {
    _guideWidth = guideWidth;
    _screenWidth = MediaQuery.of(context).size.width;
  }

  /// before using resize this method should be call in build() of widget.
  /// @param context
  /// - to get context of application.
  /// @param guideWidth
  /// - guide device width.
  static init(BuildContext context, int guideWidth) {
    _instance = Multiscreen._(context, guideWidth);
  }

  static Multiscreen get instance => _instance;

  /// resize size in gui-guideline to fit devices
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
