/// The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
enum BackupRunType {
  sqlBackupRunTypeUnspecified("SQL_BACKUP_RUN_TYPE_UNSPECIFIED"),
  automated("AUTOMATED"),
  onDemand("ON_DEMAND");

  const BackupRunType(this.wireValue);
  final String wireValue;

  static BackupRunType fromValue(String value) {
    for (final item in BackupRunType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupRunType value: $value');
  }
}

