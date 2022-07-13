
import 'blank_screen_krishna_platform_interface.dart';

class BlankScreenKrishna {
  Future<String?> getPlatformVersion() {
    return BlankScreenKrishnaPlatform.instance.getPlatformVersion();
  }
}
