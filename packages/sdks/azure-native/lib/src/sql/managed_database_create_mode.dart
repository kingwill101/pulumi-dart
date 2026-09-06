import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed database create mode. PointInTimeRestore: Create a database by restoring a point in time backup of an existing database. SourceDatabaseName, SourceManagedInstanceName and PointInTime must be specified. RestoreExternalBackup: Create a database by restoring from external backup files. Collation, StorageContainerUri and StorageContainerSasToken must be specified. Recovery: Creates a database by restoring a geo-replicated backup. RecoverableDatabaseId must be specified as the recoverable database resource ID to restore. RestoreLongTermRetentionBackup: Create a database by restoring from a long term retention backup (longTermRetentionBackupResourceId required).
enum ManagedDatabaseCreateMode implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueRestoreExternalBackup("RestoreExternalBackup"),
  valuePointInTimeRestore("PointInTimeRestore"),
  valueRecovery("Recovery"),
  valueRestoreLongTermRetentionBackup("RestoreLongTermRetentionBackup");

  const ManagedDatabaseCreateMode(this.wireValue);
  @override
  final String wireValue;

  static ManagedDatabaseCreateMode fromValue(String value) {
    for (final item in ManagedDatabaseCreateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedDatabaseCreateMode value: $value');
  }
}
