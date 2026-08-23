/// Set the minimum TLS version to be permitted on requests to storage. The default interpretation is TLS 1.0 for this property. Minimum TLS version 1.3 version is not supported.
enum MinimumTlsVersion {
  valueTLS10("TLS1_0"),
  valueTLS11("TLS1_1"),
  valueTLS12("TLS1_2"),
  valueTLS13("TLS1_3");

  const MinimumTlsVersion(this.wireValue);
  final String wireValue;

  static MinimumTlsVersion fromValue(String value) {
    for (final item in MinimumTlsVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MinimumTlsVersion value: $value');
  }
}
