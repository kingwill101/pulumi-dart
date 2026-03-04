/// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
enum SchedulingMaintenanceInterval {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const SchedulingMaintenanceInterval(this.wireValue);
  final String wireValue;

  static SchedulingMaintenanceInterval fromValue(String value) {
    for (final item in SchedulingMaintenanceInterval.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingMaintenanceInterval value: $value');
  }
}
