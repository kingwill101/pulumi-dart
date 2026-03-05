// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about a backup.
class BackupInfoResponse {
  /// Name of the backup.
  final pulumi.Input<String> backup;
  /// The time the CreateBackup request was received.
  final pulumi.Input<String> createTime;
  /// Name of the database the backup was created from.
  final pulumi.Input<String> sourceDatabase;
  /// The backup contains an externally consistent copy of `source_database` at the timestamp specified by `version_time`. If the CreateBackup request did not specify `version_time`, the `version_time` of the backup is equivalent to the `create_time`.
  final pulumi.Input<String> versionTime;

  /// Creates a new [BackupInfoResponse].
  /// [backup] Name of the backup.
  /// [createTime] The time the CreateBackup request was received.
  /// [sourceDatabase] Name of the database the backup was created from.
  /// [versionTime] The backup contains an externally consistent copy of `source_database` at the timestamp specified by `version_time`. If the CreateBackup request did not specify `version_time`, the `version_time` of the backup is equivalent to the `create_time`.
  BackupInfoResponse({
    required this.backup,
    required this.createTime,
    required this.sourceDatabase,
    required this.versionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
      'createTime': createTime,
      'sourceDatabase': sourceDatabase,
      'versionTime': versionTime,
    };
  }

  factory BackupInfoResponse.fromMap(Map<String, dynamic> map) {
    return BackupInfoResponse(
      backup: pulumi.Input.fromValue(map['backup'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      sourceDatabase: pulumi.Input.fromValue(map['sourceDatabase'] as String),
      versionTime: pulumi.Input.fromValue(map['versionTime'] as String),
    );
  }
}

