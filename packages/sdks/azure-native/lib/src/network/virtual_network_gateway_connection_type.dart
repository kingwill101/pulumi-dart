/// Gateway connection type.
enum VirtualNetworkGatewayConnectionType {
  valueIPsec("IPsec"),
  valueVnet2Vnet("Vnet2Vnet"),
  valueExpressRoute("ExpressRoute"),
  valueVPNClient("VPNClient");

  const VirtualNetworkGatewayConnectionType(this.value);
  final String value;

  static VirtualNetworkGatewayConnectionType fromValue(String value) {
    for (final item in VirtualNetworkGatewayConnectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkGatewayConnectionType value: $value');
  }
}

