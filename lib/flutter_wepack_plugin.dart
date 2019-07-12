import 'dart:async';

import 'package:flutter/services.dart';

class FlutterWepackPlugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_wepack_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> toast() async {
    print("ceshi");
    await _channel.invokeMethod("toast");
  }
}
