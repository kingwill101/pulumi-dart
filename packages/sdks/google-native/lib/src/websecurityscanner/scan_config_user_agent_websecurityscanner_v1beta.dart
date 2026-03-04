/// The user agent used during scanning.
enum ScanConfigUserAgentWebsecurityscannerV1beta {
  userAgentUnspecified("USER_AGENT_UNSPECIFIED"),
  chromeLinux("CHROME_LINUX"),
  chromeAndroid("CHROME_ANDROID"),
  safariIphone("SAFARI_IPHONE");

  const ScanConfigUserAgentWebsecurityscannerV1beta(this.wireValue);
  final String wireValue;

  static ScanConfigUserAgentWebsecurityscannerV1beta fromValue(String value) {
    for (final item in ScanConfigUserAgentWebsecurityscannerV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ScanConfigUserAgentWebsecurityscannerV1beta value: $value',
    );
  }
}
