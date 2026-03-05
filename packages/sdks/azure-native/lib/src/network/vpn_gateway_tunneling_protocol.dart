/// VPN protocol enabled for the VpnServerConfiguration.
enum VpnGatewayTunnelingProtocol {
  valueIkeV2("IkeV2"),
  valueOpenVPN("OpenVPN");

  const VpnGatewayTunnelingProtocol(this.wireValue);
  final String wireValue;

  static VpnGatewayTunnelingProtocol fromValue(String value) {
    for (final item in VpnGatewayTunnelingProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnGatewayTunnelingProtocol value: $value');
  }
}

