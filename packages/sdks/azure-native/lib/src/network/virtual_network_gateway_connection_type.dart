import 'package:pulumi/pulumi.dart' as pulumi;

/// Gateway connection type.
enum VirtualNetworkGatewayConnectionType implements pulumi.PulumiEnum<String> {
  valueIPsec("IPsec"),
  valueVnet2Vnet("Vnet2Vnet"),
  valueExpressRoute("ExpressRoute"),
  valueVPNClient("VPNClient");

  const VirtualNetworkGatewayConnectionType(this.wireValue);
  @override
  final String wireValue;

  static VirtualNetworkGatewayConnectionType fromValue(String value) {
    for (final item in VirtualNetworkGatewayConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkGatewayConnectionType value: $value');
  }
}
