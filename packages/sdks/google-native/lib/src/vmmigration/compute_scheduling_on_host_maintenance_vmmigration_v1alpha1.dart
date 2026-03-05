/// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
enum ComputeSchedulingOnHostMaintenanceVmmigrationV1alpha1 {
  onHostMaintenanceUnspecified("ON_HOST_MAINTENANCE_UNSPECIFIED"),
  terminate("TERMINATE"),
  migrate("MIGRATE");

  const ComputeSchedulingOnHostMaintenanceVmmigrationV1alpha1(this.wireValue);
  final String wireValue;

  static ComputeSchedulingOnHostMaintenanceVmmigrationV1alpha1 fromValue(String value) {
    for (final item in ComputeSchedulingOnHostMaintenanceVmmigrationV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeSchedulingOnHostMaintenanceVmmigrationV1alpha1 value: $value');
  }
}

