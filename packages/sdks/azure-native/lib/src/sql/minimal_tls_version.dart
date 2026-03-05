/// Minimal TLS version. Allowed values: 'None', 1.0', '1.1', '1.2', '1.3'
enum MinimalTlsVersion {
  valueNone("None"),
  value10("1.0"),
  value11("1.1"),
  value12("1.2"),
  value13("1.3");

  const MinimalTlsVersion(this.wireValue);
  final String wireValue;

  static MinimalTlsVersion fromValue(String value) {
    for (final item in MinimalTlsVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MinimalTlsVersion value: $value');
  }
}

