/// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
enum ComputeSchedulingOnHostMaintenance {
  onHostMaintenanceUnspecified("ON_HOST_MAINTENANCE_UNSPECIFIED"),
  terminate("TERMINATE"),
  migrate("MIGRATE");

  const ComputeSchedulingOnHostMaintenance(this.wireValue);
  final String wireValue;

  static ComputeSchedulingOnHostMaintenance fromValue(String value) {
    for (final item in ComputeSchedulingOnHostMaintenance.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeSchedulingOnHostMaintenance value: $value');
  }
}

