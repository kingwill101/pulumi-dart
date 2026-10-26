import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of this run.
enum BackupRunStatusSqladminV1beta4 implements pulumi.PulumiEnum<String> {
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

  const BackupRunStatusSqladminV1beta4(this.wireValue);
  @override
  final String wireValue;

  static BackupRunStatusSqladminV1beta4 fromValue(String value) {
    for (final item in BackupRunStatusSqladminV1beta4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupRunStatusSqladminV1beta4 value: $value');
  }
}
