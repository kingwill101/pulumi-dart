// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPlanBackupRuleStandardScheduleWeekDayOfMonth {
  /// Specifies the day of the week.
  /// Possible values are: `DAY_OF_WEEK_UNSPECIFIED`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final pulumi.Input<String> dayOfWeek;
  /// WeekOfMonth enumerates possible weeks in the month, e.g. the first, third, or last week of the month.
  /// Possible values are: `WEEK_OF_MONTH_UNSPECIFIED`, `FIRST`, `SECOND`, `THIRD`, `FOURTH`, `LAST`.
  final pulumi.Input<String> weekOfMonth;

  /// Creates a new [BackupPlanBackupRuleStandardScheduleWeekDayOfMonth].
  /// [dayOfWeek] Specifies the day of the week.
  /// [weekOfMonth] WeekOfMonth enumerates possible weeks in the month, e.g. the first, third, or last week of the month.
  BackupPlanBackupRuleStandardScheduleWeekDayOfMonth({
    required this.dayOfWeek,
    required this.weekOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'weekOfMonth': weekOfMonth,
    };
  }

  factory BackupPlanBackupRuleStandardScheduleWeekDayOfMonth.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupRuleStandardScheduleWeekDayOfMonth(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      weekOfMonth: pulumi.Input.fromValue(map['weekOfMonth'] as String),
    );
  }
}

