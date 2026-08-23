/// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
enum RegionInstanceGroupManagerFailoverActionComputeBeta {
  noFailover("NO_FAILOVER"),
  unknown("UNKNOWN");

  const RegionInstanceGroupManagerFailoverActionComputeBeta(this.wireValue);
  final String wireValue;

  static RegionInstanceGroupManagerFailoverActionComputeBeta fromValue(String value) {
    for (final item in RegionInstanceGroupManagerFailoverActionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionInstanceGroupManagerFailoverActionComputeBeta value: $value');
  }
}
