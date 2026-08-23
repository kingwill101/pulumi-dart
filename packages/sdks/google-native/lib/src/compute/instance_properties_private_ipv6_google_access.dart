/// The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
enum InstancePropertiesPrivateIpv6GoogleAccess {
  enableBidirectionalAccessToGoogle("ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE"),
  enableOutboundVmAccessToGoogle("ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE"),
  inheritFromSubnetwork("INHERIT_FROM_SUBNETWORK");

  const InstancePropertiesPrivateIpv6GoogleAccess(this.wireValue);
  final String wireValue;

  static InstancePropertiesPrivateIpv6GoogleAccess fromValue(String value) {
    for (final item in InstancePropertiesPrivateIpv6GoogleAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePropertiesPrivateIpv6GoogleAccess value: $value');
  }
}
