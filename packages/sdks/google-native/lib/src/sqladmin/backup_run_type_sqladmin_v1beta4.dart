/// The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
enum BackupRunTypeSqladminV1beta4 {
  sqlBackupRunTypeUnspecified("SQL_BACKUP_RUN_TYPE_UNSPECIFIED"),
  automated("AUTOMATED"),
  onDemand("ON_DEMAND");

  const BackupRunTypeSqladminV1beta4(this.value);
  final String value;

  static BackupRunTypeSqladminV1beta4 fromValue(String value) {
    for (final item in BackupRunTypeSqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupRunTypeSqladminV1beta4 value: $value');
  }
}

