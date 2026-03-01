/// The unit that 'retained_backups' represents.
enum BackupRetentionSettingsRetentionUnit {
  retentionUnitUnspecified("RETENTION_UNIT_UNSPECIFIED"),
  count("COUNT");

  const BackupRetentionSettingsRetentionUnit(this.value);
  final String value;

  static BackupRetentionSettingsRetentionUnit fromValue(String value) {
    for (final item in BackupRetentionSettingsRetentionUnit.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupRetentionSettingsRetentionUnit value: $value');
  }
}

