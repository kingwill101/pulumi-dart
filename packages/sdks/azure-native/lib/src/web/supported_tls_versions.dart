import 'package:pulumi/pulumi.dart' as pulumi;

/// ScmMinTlsVersion: configures the minimum version of TLS required for SSL requests for SCM site
enum SupportedTlsVersions implements pulumi.PulumiEnum<String> {
  resource10("1.0"),
  resource11("1.1"),
  resource12("1.2"),
  resource13("1.3");

  const SupportedTlsVersions(this.wireValue);
  @override
  final String wireValue;

  static SupportedTlsVersions fromValue(String value) {
    for (final item in SupportedTlsVersions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedTlsVersions value: $value');
  }
}
