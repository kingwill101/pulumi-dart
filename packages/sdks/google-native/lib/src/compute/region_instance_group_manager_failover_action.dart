import 'package:pulumi/pulumi.dart' as pulumi;

/// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
enum RegionInstanceGroupManagerFailoverAction implements pulumi.PulumiEnum<String> {
  noFailover("NO_FAILOVER"),
  unknown("UNKNOWN");

  const RegionInstanceGroupManagerFailoverAction(this.wireValue);
  @override
  final String wireValue;

  static RegionInstanceGroupManagerFailoverAction fromValue(String value) {
    for (final item in RegionInstanceGroupManagerFailoverAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionInstanceGroupManagerFailoverAction value: $value');
  }
}
