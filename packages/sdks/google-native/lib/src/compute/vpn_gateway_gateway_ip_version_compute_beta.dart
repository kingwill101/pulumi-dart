/// The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
enum VpnGatewayGatewayIpVersionComputeBeta {
  ipv4("IPV4"),
  ipv6("IPV6");

  const VpnGatewayGatewayIpVersionComputeBeta(this.wireValue);
  final String wireValue;

  static VpnGatewayGatewayIpVersionComputeBeta fromValue(String value) {
    for (final item in VpnGatewayGatewayIpVersionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnGatewayGatewayIpVersionComputeBeta value: $value');
  }
}

