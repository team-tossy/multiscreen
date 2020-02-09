import 'dart:ui' as ui;

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
    return ((ui.window.physicalSize.width / ui.window.devicePixelRatio) /
            guideSize) *
        this;
  }

  double get resize320 {
    return ((ui.window.physicalSize.width / ui.window.devicePixelRatio) / 320) *
        this;
  }

  double get resize360 =>
      ((ui.window.physicalSize.width / ui.window.devicePixelRatio) / 360) *
      this;
}
