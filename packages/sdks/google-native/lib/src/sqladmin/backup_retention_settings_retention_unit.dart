import 'package:pulumi/pulumi.dart' as pulumi;

/// The unit that 'retained_backups' represents.
enum BackupRetentionSettingsRetentionUnit implements pulumi.PulumiEnum<String> {
  retentionUnitUnspecified("RETENTION_UNIT_UNSPECIFIED"),
  count("COUNT");

  const BackupRetentionSettingsRetentionUnit(this.wireValue);
  @override
  final String wireValue;

  static BackupRetentionSettingsRetentionUnit fromValue(String value) {
    for (final item in BackupRetentionSettingsRetentionUnit.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupRetentionSettingsRetentionUnit value: $value');
  }
}
