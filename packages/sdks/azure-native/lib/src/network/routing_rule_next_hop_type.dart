/// Next hop type.
enum RoutingRuleNextHopType {
  valueInternet("Internet"),
  valueNoNextHop("NoNextHop"),
  valueVirtualAppliance("VirtualAppliance"),
  valueVirtualNetworkGateway("VirtualNetworkGateway"),
  valueVnetLocal("VnetLocal");

  const RoutingRuleNextHopType(this.value);
  final String value;

  static RoutingRuleNextHopType fromValue(String value) {
    for (final item in RoutingRuleNextHopType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingRuleNextHopType value: $value');
  }
}

