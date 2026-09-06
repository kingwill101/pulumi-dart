import 'package:pulumi/pulumi.dart' as pulumi;

/// The hubRoutingPreference of this VirtualHub.
enum HubRoutingPreference implements pulumi.PulumiEnum<String> {
  valueExpressRoute("ExpressRoute"),
  valueVpnGateway("VpnGateway"),
  valueASPath("ASPath");

  const HubRoutingPreference(this.wireValue);
  @override
  final String wireValue;

  static HubRoutingPreference fromValue(String value) {
    for (final item in HubRoutingPreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HubRoutingPreference value: $value');
  }
}
