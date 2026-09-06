import 'package:pulumi/pulumi.dart' as pulumi;

/// Next hop type.
enum RoutingRuleNextHopType implements pulumi.PulumiEnum<String> {
  valueInternet("Internet"),
  valueNoNextHop("NoNextHop"),
  valueVirtualAppliance("VirtualAppliance"),
  valueVirtualNetworkGateway("VirtualNetworkGateway"),
  valueVnetLocal("VnetLocal");

  const RoutingRuleNextHopType(this.wireValue);
  @override
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
