import 'package:flutter_test/flutter_test.dart';
import 'package:blank_screen_krishna/blank_screen_krishna.dart';
import 'package:blank_screen_krishna/blank_screen_krishna_platform_interface.dart';
import 'package:blank_screen_krishna/blank_screen_krishna_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBlankScreenKrishnaPlatform 
    with MockPlatformInterfaceMixin
    implements BlankScreenKrishnaPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BlankScreenKrishnaPlatform initialPlatform = BlankScreenKrishnaPlatform.instance;

  test('$MethodChannelBlankScreenKrishna is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBlankScreenKrishna>());
  });

  test('getPlatformVersion', () async {
    BlankScreenKrishna blankScreenKrishnaPlugin = BlankScreenKrishna();
    MockBlankScreenKrishnaPlatform fakePlatform = MockBlankScreenKrishnaPlatform();
    BlankScreenKrishnaPlatform.instance = fakePlatform;
  
    expect(await blankScreenKrishnaPlugin.getPlatformVersion(), '42');
  });
}
