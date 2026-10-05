import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
enum VpnGatewayGatewayIpVersionComputeBeta implements pulumi.PulumiEnum<String> {
  ipv4("IPV4"),
  ipv6("IPV6");

  const VpnGatewayGatewayIpVersionComputeBeta(this.wireValue);
  @override
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
