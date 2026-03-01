/// The type of this virtual network gateway.
enum VirtualNetworkGatewayType {
  valueVpn("Vpn"),
  valueExpressRoute("ExpressRoute"),
  valueLocalGateway("LocalGateway");

  const VirtualNetworkGatewayType(this.value);
  final String value;

  static VirtualNetworkGatewayType fromValue(String value) {
    for (final item in VirtualNetworkGatewayType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkGatewayType value: $value');
  }
}

