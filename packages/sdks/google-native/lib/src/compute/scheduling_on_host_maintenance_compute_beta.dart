import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
enum SchedulingOnHostMaintenanceComputeBeta implements pulumi.PulumiEnum<String> {
  migrate("MIGRATE"),
  terminate("TERMINATE");

  const SchedulingOnHostMaintenanceComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static SchedulingOnHostMaintenanceComputeBeta fromValue(String value) {
    for (final item in SchedulingOnHostMaintenanceComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingOnHostMaintenanceComputeBeta value: $value');
  }
}
