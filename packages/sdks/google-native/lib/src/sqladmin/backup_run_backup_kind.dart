import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
enum BackupRunBackupKind implements pulumi.PulumiEnum<String> {
  sqlBackupKindUnspecified("SQL_BACKUP_KIND_UNSPECIFIED"),
  snapshot("SNAPSHOT"),
  physical("PHYSICAL");

  const BackupRunBackupKind(this.wireValue);
  @override
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
