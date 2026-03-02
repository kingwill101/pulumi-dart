// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firestore_v1_get_backup_schedule_args_doc}
/// Arguments for getBackupSchedule.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1_get_backup_schedule_args_doc}
class GetBackupScheduleArgs {
  final pulumi.Input<String> backupScheduleId;
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupScheduleArgs].
  /// [backupScheduleId] Required.
  /// [databaseId] Required.
  /// [project] Optional.
  GetBackupScheduleArgs({
    required this.backupScheduleId,
    required this.databaseId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupScheduleId': backupScheduleId,
      'databaseId': databaseId,
      'project': ?project,
    };
  }

  factory GetBackupScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupScheduleArgs(
      backupScheduleId: (map['backupScheduleId'] as String).input(),
      databaseId: (map['databaseId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

