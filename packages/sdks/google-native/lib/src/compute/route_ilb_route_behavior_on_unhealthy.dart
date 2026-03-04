/// ILB route behavior when ILB is deemed unhealthy based on user specified threshold on the Backend Service of the internal load balancing.
enum RouteIlbRouteBehaviorOnUnhealthy {
  doNotWithdrawRouteIfIlbUnhealthy("DO_NOT_WITHDRAW_ROUTE_IF_ILB_UNHEALTHY"),
  withdrawRouteIfIlbUnhealthy("WITHDRAW_ROUTE_IF_ILB_UNHEALTHY");

  const RouteIlbRouteBehaviorOnUnhealthy(this.wireValue);
  final String wireValue;

  static RouteIlbRouteBehaviorOnUnhealthy fromValue(String value) {
    for (final item in RouteIlbRouteBehaviorOnUnhealthy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RouteIlbRouteBehaviorOnUnhealthy value: $value',
    );
  }
}
