/// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
enum BackupRunBackupKind {
  sqlBackupKindUnspecified("SQL_BACKUP_KIND_UNSPECIFIED"),
  snapshot("SNAPSHOT"),
  physical("PHYSICAL");

  const BackupRunBackupKind(this.wireValue);
  final String wireValue;

  static BackupRunBackupKind fromValue(String value) {
    for (final item in BackupRunBackupKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupRunBackupKind value: $value');
  }
}
