import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of this run.
enum BackupRunStatus implements pulumi.PulumiEnum<String> {
  sqlBackupRunStatusUnspecified("SQL_BACKUP_RUN_STATUS_UNSPECIFIED"),
  enqueued("ENQUEUED"),
  overdue("OVERDUE"),
  running("RUNNING"),
  failed("FAILED"),
  successful("SUCCESSFUL"),
  skipped("SKIPPED"),
  deletionPending("DELETION_PENDING"),
  deletionFailed("DELETION_FAILED"),
  deleted("DELETED");

  const BackupRunStatus(this.wireValue);
  @override
  final String wireValue;

  static BackupRunStatus fromValue(String value) {
    for (final item in BackupRunStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupRunStatus value: $value');
  }
}
