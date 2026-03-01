// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_weekly_recurrence.dart';

/// Input properties used for looking up and filtering BackupSchedule resources.
class BackupScheduleState {
  /// For a schedule that runs daily.
  final pulumi.Input<Map<String, dynamic>>? dailyRecurrence;
  /// The Firestore database id. Defaults to `"(default)"`.
  final pulumi.Input<String>? database;
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
  /// [name] The unique backup schedule identifier across all locations and databases for the given project. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [retention] At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// [weeklyRecurrence] For a schedule that runs weekly on a specific day.
  BackupScheduleState({
    pulumi.Output<Map<String, dynamic>>? dailyRecurrence,
    pulumi.Output<String>? database,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? retention,
    pulumi.Output<BackupScheduleWeeklyRecurrence>? weeklyRecurrence,
  }) :
      dailyRecurrence = pulumi.Input.asOptionalInput<Map<String, dynamic>>(dailyRecurrence),
      database = pulumi.Input.asOptionalInput<String>(database),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      retention = pulumi.Input.asOptionalInput<String>(retention),
      weeklyRecurrence = pulumi.Input.asOptionalInput<BackupScheduleWeeklyRecurrence>(weeklyRecurrence);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyRecurrence': ?dailyRecurrence,
      'database': ?database,
      'name': ?name,
      'project': ?project,
      'retention': ?retention,
      'weeklyRecurrence': ?pulumi.Input.mapOptionalInputValue<BackupScheduleWeeklyRecurrence, Map<String, dynamic>>(weeklyRecurrence, (value) => value.toMap()),
    };
  }

  factory BackupScheduleState.fromMap(Map<String, dynamic> map) {
    return BackupScheduleState(
      dailyRecurrence: map['dailyRecurrence'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['dailyRecurrence'] as Map).cast<String, dynamic>()),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      retention: map['retention'] == null ? null : pulumi.Output.create<String>(map['retention'] as String),
      weeklyRecurrence: map['weeklyRecurrence'] == null ? null : pulumi.Output.create<BackupScheduleWeeklyRecurrence>(BackupScheduleWeeklyRecurrence.fromMap((map['weeklyRecurrence'] as Map).cast<String, dynamic>())),
    );
  }
}

