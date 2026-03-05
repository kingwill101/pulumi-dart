/// The stack type for this VPN gateway to identify the IP protocols that are enabled. Possible values are: IPV4_ONLY, IPV4_IPV6. If not specified, IPV4_ONLY will be used.
enum VpnGatewayStackType {
  ipv4Ipv6("IPV4_IPV6"),
  ipv4Only("IPV4_ONLY"),
  ipv6Only("IPV6_ONLY");

  const VpnGatewayStackType(this.wireValue);
  final String wireValue;

  static VpnGatewayStackType fromValue(String value) {
    for (final item in VpnGatewayStackType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnGatewayStackType value: $value');
  }
}

