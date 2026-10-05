import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
enum SchedulingMaintenanceIntervalComputeBeta implements pulumi.PulumiEnum<String> {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const SchedulingMaintenanceIntervalComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static SchedulingMaintenanceIntervalComputeBeta fromValue(String value) {
    for (final item in SchedulingMaintenanceIntervalComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingMaintenanceIntervalComputeBeta value: $value');
  }
}
