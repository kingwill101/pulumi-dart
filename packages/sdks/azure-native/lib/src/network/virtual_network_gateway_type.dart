/// The type of this virtual network gateway.
enum VirtualNetworkGatewayType {
  valueVpn("Vpn"),
  valueExpressRoute("ExpressRoute"),
  valueLocalGateway("LocalGateway");

  const VirtualNetworkGatewayType(this.wireValue);
  final String wireValue;

  static VirtualNetworkGatewayType fromValue(String value) {
    for (final item in VirtualNetworkGatewayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkGatewayType value: $value');
  }
}

