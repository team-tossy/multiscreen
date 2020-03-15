import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';

/// If you can not create a GUI guide for each resolution or device,
/// you can create one GUI guide and use Multiscreen for development.
///

double resize(double origin, {double guideSize = 360}) {
  if (guideSize == null) {
    throw Exception('init Multiscreen');
  }

  if (guideSize <= 0) {
    throw Exception('make sure the guide size is more than 0');
  }

  return origin._resize(guideSize: guideSize);
}

extension Resize on double {
  double _resize({double guideSize = 360}) {
    double width = ui.window.physicalSize.width;
    double height = ui.window.physicalSize.height;
    double basis = width <= height ? width : height;

    return ((basis / ui.window.devicePixelRatio) / guideSize) * this;
  }

  double get resize320 {
    return _resize(guideSize: 320);
  }

  double get resize360 {
    return _resize();
  }
}
