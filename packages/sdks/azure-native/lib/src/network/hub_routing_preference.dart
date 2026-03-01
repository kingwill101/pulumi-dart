/// The hubRoutingPreference of this VirtualHub.
enum HubRoutingPreference {
  valueExpressRoute("ExpressRoute"),
  valueVpnGateway("VpnGateway"),
  valueASPath("ASPath");

  const HubRoutingPreference(this.value);
  final String value;

  static HubRoutingPreference fromValue(String value) {
    for (final item in HubRoutingPreference.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HubRoutingPreference value: $value');
  }
}

