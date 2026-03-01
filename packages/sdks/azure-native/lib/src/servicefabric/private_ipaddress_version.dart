/// Specifies whether the IP configuration's private IP is IPv4 or IPv6. Default is IPv4.
enum PrivateIPAddressVersion {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

  const PrivateIPAddressVersion(this.value);
  final String value;

  static PrivateIPAddressVersion fromValue(String value) {
    for (final item in PrivateIPAddressVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateIPAddressVersion value: $value');
  }
}

