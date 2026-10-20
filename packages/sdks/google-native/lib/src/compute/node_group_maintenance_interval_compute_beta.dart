import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
enum NodeGroupMaintenanceIntervalComputeBeta implements pulumi.PulumiEnum<String> {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const NodeGroupMaintenanceIntervalComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static NodeGroupMaintenanceIntervalComputeBeta fromValue(String value) {
    for (final item in NodeGroupMaintenanceIntervalComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupMaintenanceIntervalComputeBeta value: $value');
  }
}
