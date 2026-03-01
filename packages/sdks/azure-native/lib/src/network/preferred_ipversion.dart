/// The preferred IP version to use in test evaluation. The connection monitor may choose to use a different version depending on other parameters.
enum PreferredIPVersion {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

  const PreferredIPVersion(this.value);
  final String value;

  static PreferredIPVersion fromValue(String value) {
    for (final item in PreferredIPVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PreferredIPVersion value: $value');
  }
}

