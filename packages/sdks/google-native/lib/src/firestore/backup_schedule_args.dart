// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1_weekly_recurrence.dart';

/// {@template pulumi_firestore_v1_backup_schedule_args_doc}
/// The set of arguments for BackupSchedule.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1_backup_schedule_args_doc}
class BackupScheduleArgs {
  /// For a schedule that runs daily at a specified time.
  final pulumi.Input<Map<String, dynamic>>? dailyRecurrence;
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String>? project;
  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  final pulumi.Input<String>? retention;
  /// For a schedule that runs weekly on a specific day and time.
  final pulumi.Input<GoogleFirestoreAdminV1WeeklyRecurrence>? weeklyRecurrence;

  /// Creates a new [BackupScheduleArgs].
  /// [dailyRecurrence] For a schedule that runs daily at a specified time.
  /// [databaseId] Required.
  /// [project] Optional.
  /// [retention] At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// [weeklyRecurrence] For a schedule that runs weekly on a specific day and time.
  BackupScheduleArgs({
    pulumi.Output<Map<String, dynamic>>? dailyRecurrence,
    required pulumi.Output<String> databaseId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? retention,
    pulumi.Output<GoogleFirestoreAdminV1WeeklyRecurrence>? weeklyRecurrence,
  }) :
      dailyRecurrence = pulumi.Input.asOptionalInput<Map<String, dynamic>>(dailyRecurrence),
      databaseId = pulumi.Input.asInput<String>(databaseId),
      project = pulumi.Input.asOptionalInput<String>(project),
      retention = pulumi.Input.asOptionalInput<String>(retention),
      weeklyRecurrence = pulumi.Input.asOptionalInput<GoogleFirestoreAdminV1WeeklyRecurrence>(weeklyRecurrence);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyRecurrence': ?dailyRecurrence,
      'databaseId': databaseId,
      'project': ?project,
      'retention': ?retention,
      'weeklyRecurrence': ?pulumi.Input.mapOptionalInputValue<GoogleFirestoreAdminV1WeeklyRecurrence, Map<String, dynamic>>(weeklyRecurrence, (value) => value.toMap()),
    };
  }

  factory BackupScheduleArgs.fromMap(Map<String, dynamic> map) {
    return BackupScheduleArgs(
      dailyRecurrence: map['dailyRecurrence'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['dailyRecurrence'] as Map).cast<String, dynamic>()),
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      retention: map['retention'] == null ? null : pulumi.Output.create<String>(map['retention'] as String),
      weeklyRecurrence: map['weeklyRecurrence'] == null ? null : pulumi.Output.create<GoogleFirestoreAdminV1WeeklyRecurrence>(GoogleFirestoreAdminV1WeeklyRecurrence.fromMap((map['weeklyRecurrence'] as Map).cast<String, dynamic>())),
    );
  }
}

