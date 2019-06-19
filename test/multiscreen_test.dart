import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:multiscreen/multiscreen.dart';

void main() {
  const MethodChannel channel = MethodChannel('multiscreen');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
  });
}
