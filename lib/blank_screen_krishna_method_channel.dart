import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'blank_screen_krishna_platform_interface.dart';

/// An implementation of [BlankScreenKrishnaPlatform] that uses method channels.
class MethodChannelBlankScreenKrishna extends BlankScreenKrishnaPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('blank_screen_krishna');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
