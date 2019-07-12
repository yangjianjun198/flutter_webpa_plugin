import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_wepack_plugin/flutter_wepack_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_wepack_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterWepackPlugin.platformVersion, '42');
  });
}
