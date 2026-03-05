/// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
enum SubnetworkIpv6AccessTypeComputeV1 {
  external("EXTERNAL"),
  internal("INTERNAL");

  const SubnetworkIpv6AccessTypeComputeV1(this.wireValue);
  final String wireValue;

  static SubnetworkIpv6AccessTypeComputeV1 fromValue(String value) {
    for (final item in SubnetworkIpv6AccessTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkIpv6AccessTypeComputeV1 value: $value');
  }
}

