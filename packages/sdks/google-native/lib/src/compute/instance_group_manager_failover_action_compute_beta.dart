/// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
enum InstanceGroupManagerFailoverActionComputeBeta {
  noFailover("NO_FAILOVER"),
  unknown("UNKNOWN");

  const InstanceGroupManagerFailoverActionComputeBeta(this.wireValue);
  final String wireValue;

  static InstanceGroupManagerFailoverActionComputeBeta fromValue(String value) {
    for (final item in InstanceGroupManagerFailoverActionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerFailoverActionComputeBeta value: $value');
  }
}
