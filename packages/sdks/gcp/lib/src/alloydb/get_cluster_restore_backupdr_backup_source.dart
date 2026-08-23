// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterRestoreBackupdrBackupSource {
  /// The name of the BackupDR backup that this cluster is restored from. It must be of the format "projects/[PROJECT]/locations/[LOCATION]/backupVaults/[VAULT_ID]/dataSources/[DATASOURCE_ID]/backups/[BACKUP_ID]"
  final pulumi.Input<String> backup;

  /// Creates a new [GetClusterRestoreBackupdrBackupSource].
  /// [backup] The name of the BackupDR backup that this cluster is restored from. It must be of the format "projects/[PROJECT]/locations/[LOCATION]/backupVaults/[VAULT_ID]/dataSources/[DATASOURCE_ID]/backups/[BACKUP_ID]"
  const GetClusterRestoreBackupdrBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
    };
  }

  factory GetClusterRestoreBackupdrBackupSource.fromMap(Map<String, dynamic> map) {
    return GetClusterRestoreBackupdrBackupSource(
      backup: pulumi.Input.fromValue(map['backup'] as String),
    );
  }
}
