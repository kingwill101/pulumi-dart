/// Next hop type.
enum RoutingRuleNextHopType {
  valueInternet("Internet"),
  valueNoNextHop("NoNextHop"),
  valueVirtualAppliance("VirtualAppliance"),
  valueVirtualNetworkGateway("VirtualNetworkGateway"),
  valueVnetLocal("VnetLocal");

  const RoutingRuleNextHopType(this.wireValue);
  final String wireValue;

  static RoutingRuleNextHopType fromValue(String value) {
    for (final item in RoutingRuleNextHopType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingRuleNextHopType value: $value');
  }
}
