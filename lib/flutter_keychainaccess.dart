
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class FlutterKeychainaccess {
  static const MethodChannel _channel =
      const MethodChannel('flutter_keychainaccess');

  static Future<void> write({@required String key, @required String value}) async {
    final String version = await _channel.invokeMethod('write', <String, dynamic>{'key': key, 'value': value});
    return version;
  }

  static Future<String> read({@required String key}) async {
    return await _channel.invokeMethod('read',  <String, dynamic>{'key': key});
  }
}
