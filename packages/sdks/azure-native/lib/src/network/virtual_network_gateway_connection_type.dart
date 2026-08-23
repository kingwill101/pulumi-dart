/// Gateway connection type.
enum VirtualNetworkGatewayConnectionType {
  valueIPsec("IPsec"),
  valueVnet2Vnet("Vnet2Vnet"),
  valueExpressRoute("ExpressRoute"),
  valueVPNClient("VPNClient");

  const VirtualNetworkGatewayConnectionType(this.wireValue);
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
