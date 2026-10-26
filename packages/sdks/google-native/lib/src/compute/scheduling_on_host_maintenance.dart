import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
enum SchedulingOnHostMaintenance implements pulumi.PulumiEnum<String> {
  migrate("MIGRATE"),
  terminate("TERMINATE");

  const SchedulingOnHostMaintenance(this.wireValue);
  @override
  final String wireValue;

  static SchedulingOnHostMaintenance fromValue(String value) {
    for (final item in SchedulingOnHostMaintenance.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingOnHostMaintenance value: $value');
  }
}
