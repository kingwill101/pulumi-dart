/// The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
enum SubnetworkStackType {
  ipv4Ipv6("IPV4_IPV6"),
  ipv4Only("IPV4_ONLY"),
  ipv6Only("IPV6_ONLY");

  const SubnetworkStackType(this.wireValue);
  final String wireValue;

  static SubnetworkStackType fromValue(String value) {
    for (final item in SubnetworkStackType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkStackType value: $value');
  }
}
