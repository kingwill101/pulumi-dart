import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of storage: `PD_SSD` (default) or `PD_HDD`.
enum CloudSqlSettingsDataDiskType implements pulumi.PulumiEnum<String> {
  sqlDataDiskTypeUnspecified("SQL_DATA_DISK_TYPE_UNSPECIFIED"),
  pdSsd("PD_SSD"),
  pdHdd("PD_HDD");

  const CloudSqlSettingsDataDiskType(this.wireValue);
  @override
  final String wireValue;

  static CloudSqlSettingsDataDiskType fromValue(String value) {
    for (final item in CloudSqlSettingsDataDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudSqlSettingsDataDiskType value: $value');
  }
}
