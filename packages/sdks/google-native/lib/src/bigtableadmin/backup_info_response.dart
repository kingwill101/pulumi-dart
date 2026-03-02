// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about a backup.
class BackupInfoResponse {
  /// Name of the backup.
  final pulumi.Input<String> backup;
  /// This time that the backup was finished. Row data in the backup will be no newer than this timestamp.
  final pulumi.Input<String> endTime;
  /// Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.
  final pulumi.Input<String> sourceBackup;
  /// Name of the table the backup was created from.
  final pulumi.Input<String> sourceTable;
  /// The time that the backup was started. Row data in the backup will be no older than this timestamp.
  final pulumi.Input<String> startTime;

  /// Creates a new [BackupInfoResponse].
  /// [backup] Name of the backup.
  /// [endTime] This time that the backup was finished. Row data in the backup will be no newer than this timestamp.
  /// [sourceBackup] Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.
  /// [sourceTable] Name of the table the backup was created from.
  /// [startTime] The time that the backup was started. Row data in the backup will be no older than this timestamp.
  BackupInfoResponse({
    required this.backup,
    required this.endTime,
    required this.sourceBackup,
    required this.sourceTable,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
      'endTime': endTime,
      'sourceBackup': sourceBackup,
      'sourceTable': sourceTable,
      'startTime': startTime,
    };
  }

  factory BackupInfoResponse.fromMap(Map<String, dynamic> map) {
    return BackupInfoResponse(
      backup: (map['backup'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      sourceBackup: (map['sourceBackup'] as String).input(),
      sourceTable: (map['sourceTable'] as String).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

