/// The minimum TLS version for the cluster to support, e.g. '1.2'
enum TlsVersion {
  value10("1.0"),
  value11("1.1"),
  value12("1.2");

  const TlsVersion(this.value);
  final String value;

  static TlsVersion fromValue(String value) {
    for (final item in TlsVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsVersion value: $value');
  }
}

