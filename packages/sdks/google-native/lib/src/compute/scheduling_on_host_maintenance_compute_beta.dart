/// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
enum SchedulingOnHostMaintenanceComputeBeta {
  migrate("MIGRATE"),
  terminate("TERMINATE");

  const SchedulingOnHostMaintenanceComputeBeta(this.value);
  final String value;

  static SchedulingOnHostMaintenanceComputeBeta fromValue(String value) {
    for (final item in SchedulingOnHostMaintenanceComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingOnHostMaintenanceComputeBeta value: $value');
  }
}

