import 'package:pulumi/pulumi.dart' as pulumi;

/// VPN protocol enabled for the VpnServerConfiguration.
enum VpnGatewayTunnelingProtocol implements pulumi.PulumiEnum<String> {
  valueIkeV2("IkeV2"),
  valueOpenVPN("OpenVPN");

  const VpnGatewayTunnelingProtocol(this.wireValue);
  @override
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
