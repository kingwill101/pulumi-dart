// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_weekly_recurrence.dart';

/// Input properties used for looking up and filtering BackupSchedule resources.
class BackupScheduleState {
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
  /// The unique backup schedule identifier across all locations and databases for the given project. Format:
  /// `projects/{{project}}/databases/{{database}}/backupSchedules/{{backupSchedule}}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// You can set this to a value up to 14 weeks.
  final pulumi.Input<String>? retention;
  /// For a schedule that runs weekly on a specific day.
  /// Structure is documented below.
  final pulumi.Input<BackupScheduleWeeklyRecurrence>? weeklyRecurrence;

  /// Creates a new [BackupScheduleState].
  /// [dailyRecurrence] For a schedule that runs daily.
  /// [database] The Firestore database id. Defaults to `"(default)"`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] The unique backup schedule identifier across all locations and databases for the given project. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [retention] At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// [weeklyRecurrence] For a schedule that runs weekly on a specific day.
  const BackupScheduleState({
    this.dailyRecurrence,
    this.database,
    this.deletionPolicy,
    this.name,
    this.project,
    this.retention,
    this.weeklyRecurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyRecurrence': ?dailyRecurrence,
      'database': ?database,
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'project': ?project,
      'retention': ?retention,
      'weeklyRecurrence': ?pulumi.Input.mapOptionalInputValue<BackupScheduleWeeklyRecurrence, Map<String, dynamic>>(weeklyRecurrence, (value) => value.toMap()),
    };
  }

  factory BackupScheduleState.fromMap(Map<String, dynamic> map) {
    return BackupScheduleState(
      dailyRecurrence: (() { final guardedValue = map['dailyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retention: (() { final guardedValue = map['retention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyRecurrence: (() { final guardedValue = map['weeklyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupScheduleWeeklyRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
