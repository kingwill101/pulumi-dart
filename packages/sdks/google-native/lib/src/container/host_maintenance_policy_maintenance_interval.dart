import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the frequency of planned maintenance events.
enum HostMaintenancePolicyMaintenanceInterval implements pulumi.PulumiEnum<String> {
  maintenanceIntervalUnspecified("MAINTENANCE_INTERVAL_UNSPECIFIED"),
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC");

  const HostMaintenancePolicyMaintenanceInterval(this.wireValue);
  @override
  final String wireValue;

  static HostMaintenancePolicyMaintenanceInterval fromValue(String value) {
    for (final item in HostMaintenancePolicyMaintenanceInterval.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostMaintenancePolicyMaintenanceInterval value: $value');
  }
}
