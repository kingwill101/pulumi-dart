/// The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
enum InstancePropertiesPrivateIpv6GoogleAccessComputeBeta {
  enableBidirectionalAccessToGoogle("ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE"),
  enableOutboundVmAccessToGoogle("ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE"),
  inheritFromSubnetwork("INHERIT_FROM_SUBNETWORK");

  const InstancePropertiesPrivateIpv6GoogleAccessComputeBeta(this.wireValue);
  final String wireValue;

  static InstancePropertiesPrivateIpv6GoogleAccessComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in InstancePropertiesPrivateIpv6GoogleAccessComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstancePropertiesPrivateIpv6GoogleAccessComputeBeta value: $value',
    );
  }
}
