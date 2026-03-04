/// The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
enum VpnGatewayGatewayIpVersion {
  ipv4("IPV4"),
  ipv6("IPV6");

  const VpnGatewayGatewayIpVersion(this.wireValue);
  final String wireValue;

  static VpnGatewayGatewayIpVersion fromValue(String value) {
    for (final item in VpnGatewayGatewayIpVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnGatewayGatewayIpVersion value: $value');
  }
}
