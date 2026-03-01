/// VPN protocol enabled for the VpnServerConfiguration.
enum VpnGatewayTunnelingProtocol {
  valueIkeV2("IkeV2"),
  valueOpenVPN("OpenVPN");

  const VpnGatewayTunnelingProtocol(this.value);
  final String value;

  static VpnGatewayTunnelingProtocol fromValue(String value) {
    for (final item in VpnGatewayTunnelingProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnGatewayTunnelingProtocol value: $value');
  }
}

