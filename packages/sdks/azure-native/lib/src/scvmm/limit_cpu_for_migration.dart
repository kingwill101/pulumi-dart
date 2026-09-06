import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets a value indicating whether to enable processor compatibility mode for live migration of VMs.
enum LimitCpuForMigration implements pulumi.PulumiEnum<String> {
  valueFalse("false"),
  valueTrue("true");

  const LimitCpuForMigration(this.wireValue);
  @override
  final String wireValue;

  static LimitCpuForMigration fromValue(String value) {
    for (final item in LimitCpuForMigration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LimitCpuForMigration value: $value');
  }
}
