/// Specifies the frequency of planned maintenance events.
enum HostMaintenancePolicyMaintenanceInterval {
  maintenanceIntervalUnspecified("MAINTENANCE_INTERVAL_UNSPECIFIED"),
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC");

  const HostMaintenancePolicyMaintenanceInterval(this.wireValue);
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
