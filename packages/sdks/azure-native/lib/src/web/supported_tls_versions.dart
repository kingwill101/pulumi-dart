/// ScmMinTlsVersion: configures the minimum version of TLS required for SSL requests for SCM site
enum SupportedTlsVersions {
  value10("1.0"),
  value11("1.1"),
  value12("1.2"),
  value13("1.3");

  const SupportedTlsVersions(this.wireValue);
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

