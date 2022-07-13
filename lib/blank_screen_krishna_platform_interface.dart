import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'blank_screen_krishna_method_channel.dart';

abstract class BlankScreenKrishnaPlatform extends PlatformInterface {
  /// Constructs a BlankScreenKrishnaPlatform.
  BlankScreenKrishnaPlatform() : super(token: _token);

  static final Object _token = Object();

  static BlankScreenKrishnaPlatform _instance = MethodChannelBlankScreenKrishna();

  /// The default instance of [BlankScreenKrishnaPlatform] to use.
  ///
  /// Defaults to [MethodChannelBlankScreenKrishna].
  static BlankScreenKrishnaPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BlankScreenKrishnaPlatform] when
  /// they register themselves.
  static set instance(BlankScreenKrishnaPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
