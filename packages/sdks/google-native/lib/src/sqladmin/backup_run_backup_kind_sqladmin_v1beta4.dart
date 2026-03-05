/// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
enum BackupRunBackupKindSqladminV1beta4 {
  sqlBackupKindUnspecified("SQL_BACKUP_KIND_UNSPECIFIED"),
  snapshot("SNAPSHOT"),
  physical("PHYSICAL");

  const BackupRunBackupKindSqladminV1beta4(this.wireValue);
  final String wireValue;

  static BackupRunBackupKindSqladminV1beta4 fromValue(String value) {
    for (final item in BackupRunBackupKindSqladminV1beta4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupRunBackupKindSqladminV1beta4 value: $value');
  }
}

