import 'package:pulumi/pulumi.dart' as pulumi;

/// The user agent used during scanning.
enum ScanConfigUserAgent implements pulumi.PulumiEnum<String> {
  userAgentUnspecified("USER_AGENT_UNSPECIFIED"),
  chromeLinux("CHROME_LINUX"),
  chromeAndroid("CHROME_ANDROID"),
  safariIphone("SAFARI_IPHONE");

  const ScanConfigUserAgent(this.wireValue);
  @override
  final String wireValue;

  static ScanConfigUserAgent fromValue(String value) {
    for (final item in ScanConfigUserAgent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigUserAgent value: $value');
  }
}
