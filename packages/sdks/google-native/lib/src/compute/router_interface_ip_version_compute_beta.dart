/// IP version of this interface.
enum RouterInterfaceIpVersionComputeBeta {
  ipv4("IPV4"),
  ipv6("IPV6");

  const RouterInterfaceIpVersionComputeBeta(this.wireValue);
  final String wireValue;

  static RouterInterfaceIpVersionComputeBeta fromValue(String value) {
    for (final item in RouterInterfaceIpVersionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterInterfaceIpVersionComputeBeta value: $value');
  }
}

