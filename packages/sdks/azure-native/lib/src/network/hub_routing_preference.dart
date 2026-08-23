/// The hubRoutingPreference of this VirtualHub.
enum HubRoutingPreference {
  valueExpressRoute("ExpressRoute"),
  valueVpnGateway("VpnGateway"),
  valueASPath("ASPath");

  const HubRoutingPreference(this.wireValue);
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
