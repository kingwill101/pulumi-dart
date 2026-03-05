// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_schedule_rpo_config_exclusion_window_days_of_week.dart';
import 'backup_plan_backup_schedule_rpo_config_exclusion_window_single_occurrence_date.dart';
import 'backup_plan_backup_schedule_rpo_config_exclusion_window_start_time.dart';

class BackupPlanBackupScheduleRpoConfigExclusionWindow {
  /// The exclusion window occurs every day if set to "True".
  /// Specifying this field to "False" is an error.
  /// Only one of singleOccurrenceDate, daily and daysOfWeek may be set.
  final pulumi.Input<bool>? daily;
  /// The exclusion window occurs on these days of each week in UTC.
  /// Only one of singleOccurrenceDate, daily and daysOfWeek may be set.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek>? daysOfWeek;
  /// Specifies duration of the window in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s". Restrictions for duration based on the
  /// recurrence type to allow some time for backup to happen:
  /// - single_occurrence_date:  no restriction
  /// - daily window: duration &lt; 24 hours
  /// - weekly window:
  /// - days of week includes all seven days of a week: duration &lt; 24 hours
  /// - all other weekly window: duration &lt; 168 hours (i.e., 24 * 7 hours)
  final pulumi.Input<String> duration;
  /// No recurrence. The exclusion window occurs only once and on this date in UTC.
  /// Only one of singleOccurrenceDate, daily and daysOfWeek may be set.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate>? singleOccurrenceDate;
  /// Specifies the start time of the window using time of the day in UTC.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime> startTime;

  /// Creates a new [BackupPlanBackupScheduleRpoConfigExclusionWindow].
  /// [daily] The exclusion window occurs every day if set to "True".
  /// [daysOfWeek] The exclusion window occurs on these days of each week in UTC.
  /// [duration] Specifies duration of the window in seconds with up to nine fractional digits,
  /// [singleOccurrenceDate] No recurrence. The exclusion window occurs only once and on this date in UTC.
  /// [startTime] Specifies the start time of the window using time of the day in UTC.
  BackupPlanBackupScheduleRpoConfigExclusionWindow({
    this.daily,
    this.daysOfWeek,
    required this.duration,
    this.singleOccurrenceDate,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daily': ?daily,
      'daysOfWeek': ?pulumi.Input.mapOptionalInputValue<BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek, Map<String, dynamic>>(daysOfWeek, (value) => value.toMap()),
      'duration': duration,
      'singleOccurrenceDate': ?pulumi.Input.mapOptionalInputValue<BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate, Map<String, dynamic>>(singleOccurrenceDate, (value) => value.toMap()),
      'startTime': pulumi.Input.mapInputValue<BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory BackupPlanBackupScheduleRpoConfigExclusionWindow.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupScheduleRpoConfigExclusionWindow(
      daily: (() { final guardedValue = map['daily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      daysOfWeek: (() { final guardedValue = map['daysOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      singleOccurrenceDate: (() { final guardedValue = map['singleOccurrenceDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: pulumi.Input.fromValue(BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}

