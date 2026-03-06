// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'week_day_of_month.dart';

/// Represents a monthly schedule. An example of a valid monthly schedule is "on the third Tuesday of the month" or "on the 15th of the month".
class MonthlySchedule {
  /// One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month. Months without the target day will be skipped. For example, a schedule to run "every month on the 31st" will not run in February, April, June, etc.
  final pulumi.Input<int> monthDay;
  /// Week day in a month.
  final pulumi.Input<WeekDayOfMonth> weekDayOfMonth;

  /// Creates a new [MonthlySchedule].
  /// [monthDay] One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month. Months without the target day will be skipped. For example, a schedule to run "every month on the 31st" will not run in February, April, June, etc.
  /// [weekDayOfMonth] Week day in a month.
  const MonthlySchedule({
    required this.monthDay,
    required this.weekDayOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthDay': monthDay,
      'weekDayOfMonth': pulumi.Input.mapInputValue<WeekDayOfMonth, Map<String, dynamic>>(weekDayOfMonth, (value) => value.toMap()),
    };
  }

  factory MonthlySchedule.fromMap(Map<String, dynamic> map) {
    return MonthlySchedule(
      monthDay: pulumi.Input.fromValue(map['monthDay'] as int),
      weekDayOfMonth: pulumi.Input.fromValue(WeekDayOfMonth.fromMap((map['weekDayOfMonth']! as Map).cast<String, dynamic>())),
    );
  }
}

