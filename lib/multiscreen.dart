import 'package:flutter/widgets.dart';

/// If you can not create a GUI guide for each resolution or device,
/// you can create one GUI guide and use Multiscreen for development.
class Multiscreen {
  int _guideWidth;
  double _screenWidth = 0;

  Multiscreen(BuildContext context, int guideWidth) {
    _guideWidth = guideWidth;
    _screenWidth = MediaQuery.of(context).size.width;
  }

  /// @param context
  /// - to get context of application.
  /// @param guideWidth
  /// - guide device width.
  factory Multiscreen.of(BuildContext context, int guideWidth) {
    return Multiscreen(context, guideWidth);
  }

  /// resize size in gui-guideline to fit devices
  double resize(double origin) {
    if (_guideWidth <= 0) {
      throw Exception;
    }
    if (_screenWidth == 0) {
      return origin;
    }

    double ret = (_screenWidth / _guideWidth) * origin;

    return ret;
  }
}
