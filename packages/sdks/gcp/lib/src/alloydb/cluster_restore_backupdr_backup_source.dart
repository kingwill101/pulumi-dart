// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterRestoreBackupdrBackupSource {
  /// The name of the BackupDR backup that this cluster is restored from. It must be of the format "projects/[PROJECT]/locations/[LOCATION]/backupVaults/[VAULT_ID]/dataSources/[DATASOURCE_ID]/backups/[BACKUP_ID]"
  final pulumi.Input<String> backup;

  /// Creates a new [ClusterRestoreBackupdrBackupSource].
  /// [backup] The name of the BackupDR backup that this cluster is restored from. It must be of the format "projects/[PROJECT]/locations/[LOCATION]/backupVaults/[VAULT_ID]/dataSources/[DATASOURCE_ID]/backups/[BACKUP_ID]"
  const ClusterRestoreBackupdrBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
    };
  }

  factory ClusterRestoreBackupdrBackupSource.fromMap(Map<String, dynamic> map) {
    return ClusterRestoreBackupdrBackupSource(
      backup: pulumi.Input.fromValue(map['backup'] as String),
    );
  }
}
