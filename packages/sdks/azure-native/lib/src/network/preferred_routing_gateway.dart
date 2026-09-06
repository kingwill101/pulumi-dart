import 'package:pulumi/pulumi.dart' as pulumi;

/// The preferred gateway to route on-prem traffic
enum PreferredRoutingGateway implements pulumi.PulumiEnum<String> {
  valueExpressRoute("ExpressRoute"),
  valueVpnGateway("VpnGateway"),
  valueNone("None");

  const PreferredRoutingGateway(this.wireValue);
  @override
  final String wireValue;

  static PreferredRoutingGateway fromValue(String value) {
    for (final item in PreferredRoutingGateway.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PreferredRoutingGateway value: $value');
  }
}
