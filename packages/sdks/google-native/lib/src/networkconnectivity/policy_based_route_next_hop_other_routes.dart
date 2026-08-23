/// Optional. Other routes that will be referenced to determine the next hop of the packet.
enum PolicyBasedRouteNextHopOtherRoutes {
  otherRoutesUnspecified("OTHER_ROUTES_UNSPECIFIED"),
  defaultRouting("DEFAULT_ROUTING");

  const PolicyBasedRouteNextHopOtherRoutes(this.wireValue);
  final String wireValue;

  static PolicyBasedRouteNextHopOtherRoutes fromValue(String value) {
    for (final item in PolicyBasedRouteNextHopOtherRoutes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyBasedRouteNextHopOtherRoutes value: $value');
  }
}
