/// The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
enum InstancePrivateIpv6GoogleAccessComputeBeta {
  enableBidirectionalAccessToGoogle("ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE"),
  enableOutboundVmAccessToGoogle("ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE"),
  inheritFromSubnetwork("INHERIT_FROM_SUBNETWORK");

  const InstancePrivateIpv6GoogleAccessComputeBeta(this.wireValue);
  final String wireValue;

  static InstancePrivateIpv6GoogleAccessComputeBeta fromValue(String value) {
    for (final item in InstancePrivateIpv6GoogleAccessComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstancePrivateIpv6GoogleAccessComputeBeta value: $value',
    );
  }
}
