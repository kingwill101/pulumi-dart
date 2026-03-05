// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth {
  /// A day of the week.
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final pulumi.Input<String> dayOfWeek;
  /// Represents the number of days before or after the given week day of month that the patch deployment is scheduled for.
  final pulumi.Input<int>? dayOffset;
  /// Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.
  final pulumi.Input<int> weekOrdinal;

  /// Creates a new [PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth].
  /// [dayOfWeek] A day of the week.
  /// [dayOffset] Represents the number of days before or after the given week day of month that the patch deployment is scheduled for.
  /// [weekOrdinal] Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.
  PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth({
    required this.dayOfWeek,
    this.dayOffset,
    required this.weekOrdinal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'dayOffset': ?dayOffset,
      'weekOrdinal': weekOrdinal,
    };
  }

  factory PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      dayOffset: (() { final guardedValue = map['dayOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      weekOrdinal: pulumi.Input.fromValue(map['weekOrdinal'] as int),
    );
  }
}

