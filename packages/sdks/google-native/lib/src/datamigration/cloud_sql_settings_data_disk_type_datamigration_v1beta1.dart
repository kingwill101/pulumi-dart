import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of storage: `PD_SSD` (default) or `PD_HDD`.
enum CloudSqlSettingsDataDiskTypeDatamigrationV1beta1 implements pulumi.PulumiEnum<String> {
  sqlDataDiskTypeUnspecified("SQL_DATA_DISK_TYPE_UNSPECIFIED"),
  pdSsd("PD_SSD"),
  pdHdd("PD_HDD");

  const CloudSqlSettingsDataDiskTypeDatamigrationV1beta1(this.wireValue);
  @override
  final String wireValue;

  static CloudSqlSettingsDataDiskTypeDatamigrationV1beta1 fromValue(String value) {
    for (final item in CloudSqlSettingsDataDiskTypeDatamigrationV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudSqlSettingsDataDiskTypeDatamigrationV1beta1 value: $value');
  }
}
