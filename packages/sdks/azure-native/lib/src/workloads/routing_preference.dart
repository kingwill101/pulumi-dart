/// Sets the routing preference of the SAP monitor. By default only RFC1918 traffic is routed to the customer VNET.
enum RoutingPreference {
  default_("Default"),
  routeAll("RouteAll");

  const RoutingPreference(this.wireValue);
  final String wireValue;

  static RoutingPreference fromValue(String value) {
    for (final item in RoutingPreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingPreference value: $value');
  }
}

