import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:blank_screen_krishna/blank_screen_krishna_method_channel.dart';

void main() {
  MethodChannelBlankScreenKrishna platform = MethodChannelBlankScreenKrishna();
  const MethodChannel channel = MethodChannel('blank_screen_krishna');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
