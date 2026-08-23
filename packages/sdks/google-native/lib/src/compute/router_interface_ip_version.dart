/// IP version of this interface.
enum RouterInterfaceIpVersion {
  ipv4("IPV4"),
  ipv6("IPV6");

  const RouterInterfaceIpVersion(this.wireValue);
  final String wireValue;

  static RouterInterfaceIpVersion fromValue(String value) {
    for (final item in RouterInterfaceIpVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterInterfaceIpVersion value: $value');
  }
}
