// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message describing a BackupSource.
class BackupSourceResponseAlloydbV1alpha {
  /// The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backup_id}
  final pulumi.Input<String> backupName;

  /// The system-generated UID of the backup which was used to create this resource. The UID is generated when the backup is created, and it is retained until the backup is deleted.
  final pulumi.Input<String> backupUid;

  /// Creates a new [BackupSourceResponseAlloydbV1alpha].
  /// [backupName] The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backup_id}
  /// [backupUid] The system-generated UID of the backup which was used to create this resource. The UID is generated when the backup is created, and it is retained until the backup is deleted.
  BackupSourceResponseAlloydbV1alpha({
    required this.backupName,
    required this.backupUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'backupName': backupName, 'backupUid': backupUid};
  }

  factory BackupSourceResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return BackupSourceResponseAlloydbV1alpha(
      backupName: pulumi.Input.fromValue(map['backupName'] as String),
      backupUid: pulumi.Input.fromValue(map['backupUid'] as String),
    );
  }
}
