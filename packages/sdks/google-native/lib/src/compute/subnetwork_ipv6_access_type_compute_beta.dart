/// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
enum SubnetworkIpv6AccessTypeComputeBeta {
  external("EXTERNAL"),
  internal("INTERNAL");

  const SubnetworkIpv6AccessTypeComputeBeta(this.wireValue);
  final String wireValue;

  static SubnetworkIpv6AccessTypeComputeBeta fromValue(String value) {
    for (final item in SubnetworkIpv6AccessTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SubnetworkIpv6AccessTypeComputeBeta value: $value',
    );
  }
}
