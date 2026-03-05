/// Gets or sets a value indicating whether to enable processor compatibility mode for live migration of VMs.
enum LimitCpuForMigration {
  valueFalse("false"),
  valueTrue("true");

  const LimitCpuForMigration(this.wireValue);
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

