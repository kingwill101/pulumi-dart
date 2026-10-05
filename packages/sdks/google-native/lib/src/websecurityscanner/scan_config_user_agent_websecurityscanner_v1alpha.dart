import 'package:pulumi/pulumi.dart' as pulumi;

/// The user agent used during scanning.
enum ScanConfigUserAgentWebsecurityscannerV1alpha implements pulumi.PulumiEnum<String> {
  userAgentUnspecified("USER_AGENT_UNSPECIFIED"),
  chromeLinux("CHROME_LINUX"),
  chromeAndroid("CHROME_ANDROID"),
  safariIphone("SAFARI_IPHONE");

  const ScanConfigUserAgentWebsecurityscannerV1alpha(this.wireValue);
  @override
  final String wireValue;

  static ScanConfigUserAgentWebsecurityscannerV1alpha fromValue(String value) {
    for (final item in ScanConfigUserAgentWebsecurityscannerV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigUserAgentWebsecurityscannerV1alpha value: $value');
  }
}
