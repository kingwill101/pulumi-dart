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
    required pulumi.Output<String> backupScheduleId,
    required pulumi.Output<String> databaseId,
    pulumi.Output<String>? project,
  }) :
      backupScheduleId = pulumi.Input.asInput<String>(backupScheduleId),
      databaseId = pulumi.Input.asInput<String>(databaseId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupScheduleId': backupScheduleId,
      'databaseId': databaseId,
      'project': ?project,
    };
  }

  factory GetBackupScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupScheduleArgs(
      backupScheduleId: pulumi.Output.create<String>(map['backupScheduleId'] as String),
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

