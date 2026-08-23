// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_weekly_recurrence.dart';

/// {@template pulumi_firestore_backup_schedule_backup_schedule_args_doc}
/// The set of arguments for BackupSchedule.
/// {@endtemplate}
/// {@macro pulumi_firestore_backup_schedule_backup_schedule_args_doc}
class BackupScheduleArgs {
  /// For a schedule that runs daily.
  final pulumi.Input<Map<String, dynamic>>? dailyRecurrence;
  /// The Firestore database id. Defaults to `"(default)"`.
  final pulumi.Input<String>? database;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// You can set this to a value up to 14 weeks.
  final pulumi.Input<String> retention;
  /// For a schedule that runs weekly on a specific day.
  /// Structure is documented below.
  final pulumi.Input<BackupScheduleWeeklyRecurrence>? weeklyRecurrence;

  /// Creates a new [BackupScheduleArgs].
  /// [dailyRecurrence] For a schedule that runs daily.
  /// [database] The Firestore database id. Defaults to `"(default)"`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [project] The ID of the project in which the resource belongs.
  /// [retention] At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// [weeklyRecurrence] For a schedule that runs weekly on a specific day.
  const BackupScheduleArgs({
    this.dailyRecurrence,
    this.database,
    this.deletionPolicy,
    this.project,
    required this.retention,
    this.weeklyRecurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyRecurrence': ?dailyRecurrence,
      'database': ?database,
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
      'retention': retention,
      'weeklyRecurrence': ?pulumi.Input.mapOptionalInputValue<BackupScheduleWeeklyRecurrence, Map<String, dynamic>>(weeklyRecurrence, (value) => value.toMap()),
    };
  }

  factory BackupScheduleArgs.fromMap(Map<String, dynamic> map) {
    return BackupScheduleArgs(
      dailyRecurrence: (() { final guardedValue = map['dailyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retention: pulumi.Input.fromValue(map['retention'] as String),
      weeklyRecurrence: (() { final guardedValue = map['weeklyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupScheduleWeeklyRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
