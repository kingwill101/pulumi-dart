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
    this.dailyRecurrence,
    required this.databaseId,
    this.project,
    this.retention,
    this.weeklyRecurrence,
  });

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
      dailyRecurrence: (() { final guardedValue = map['dailyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retention: (() { final guardedValue = map['retention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyRecurrence: (() { final guardedValue = map['weeklyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleFirestoreAdminV1WeeklyRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

