/// The type of Azure hop the packet should be sent to.
enum RouteNextHopType {
  valueVirtualNetworkGateway("VirtualNetworkGateway"),
  valueVnetLocal("VnetLocal"),
  valueInternet("Internet"),
  valueVirtualAppliance("VirtualAppliance"),
  valueNone("None");

  const RouteNextHopType(this.wireValue);
  final String wireValue;

  static RouteNextHopType fromValue(String value) {
    for (final item in RouteNextHopType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouteNextHopType value: $value');
  }
}

