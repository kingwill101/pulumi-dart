// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message describing a BackupSource.
class BackupSourceResponse {
  /// The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backup_id}
  final pulumi.Input<String> backupName;
  /// The system-generated UID of the backup which was used to create this resource. The UID is generated when the backup is created, and it is retained until the backup is deleted.
  final pulumi.Input<String> backupUid;

  /// Creates a new [BackupSourceResponse].
  /// [backupName] The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backup_id}
  /// [backupUid] The system-generated UID of the backup which was used to create this resource. The UID is generated when the backup is created, and it is retained until the backup is deleted.
  BackupSourceResponse({
    required this.backupName,
    required this.backupUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': backupName,
      'backupUid': backupUid,
    };
  }

  factory BackupSourceResponse.fromMap(Map<String, dynamic> map) {
    return BackupSourceResponse(
      backupName: (map['backupName'] as String).input(),
      backupUid: (map['backupUid'] as String).input(),
    );
  }
}

