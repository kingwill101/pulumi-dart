/// The type of configuration. In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT. In ipv6AccessConfigs, the default and only option is DIRECT_IPV6.
enum AccessConfigTypeComputeV1 {
  directIpv6("DIRECT_IPV6"),
  oneToOneNat("ONE_TO_ONE_NAT");

  const AccessConfigTypeComputeV1(this.wireValue);
  final String wireValue;

  static AccessConfigTypeComputeV1 fromValue(String value) {
    for (final item in AccessConfigTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessConfigTypeComputeV1 value: $value');
  }
}

