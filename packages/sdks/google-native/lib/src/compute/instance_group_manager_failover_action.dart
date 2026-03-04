/// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
enum InstanceGroupManagerFailoverAction {
  noFailover("NO_FAILOVER"),
  unknown("UNKNOWN");

  const InstanceGroupManagerFailoverAction(this.wireValue);
  final String wireValue;

  static InstanceGroupManagerFailoverAction fromValue(String value) {
    for (final item in InstanceGroupManagerFailoverAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceGroupManagerFailoverAction value: $value',
    );
  }
}
