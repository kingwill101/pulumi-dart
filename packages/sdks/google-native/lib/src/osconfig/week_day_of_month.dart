// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'week_day_of_month_day_of_week.dart';

/// Represents one week day in a month. An example is "the 4th Sunday".
class WeekDayOfMonth {
  /// A day of the week.
  final pulumi.Input<WeekDayOfMonthDayOfWeek> dayOfWeek;
  /// Optional. Represents the number of days before or after the given week day of month that the patch deployment is scheduled for. For example if `week_ordinal` and `day_of_week` values point to the second day of the month and this `day_offset` value is set to `3`, the patch deployment takes place three days after the second Tuesday of the month. If this value is negative, for example -5, the patches are deployed five days before before the second Tuesday of the month. Allowed values are in range [-30, 30].
  final pulumi.Input<int>? dayOffset;
  /// Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.
  final pulumi.Input<int> weekOrdinal;

  /// Creates a new [WeekDayOfMonth].
  /// [dayOfWeek] A day of the week.
  /// [dayOffset] Optional. Represents the number of days before or after the given week day of month that the patch deployment is scheduled for. For example if `week_ordinal` and `day_of_week` values point to the second day of the month and this `day_offset` value is set to `3`, the patch deployment takes place three days after the second Tuesday of the month. If this value is negative, for example -5, the patches are deployed five days before before the second Tuesday of the month. Allowed values are in range [-30, 30].
  /// [weekOrdinal] Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.
  WeekDayOfMonth({
    required this.dayOfWeek,
    this.dayOffset,
    required this.weekOrdinal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': pulumi.Input.mapInputValue<WeekDayOfMonthDayOfWeek, String>(dayOfWeek, (value) => value.wireValue),
      'dayOffset': ?dayOffset,
      'weekOrdinal': weekOrdinal,
    };
  }

  factory WeekDayOfMonth.fromMap(Map<String, dynamic> map) {
    return WeekDayOfMonth(
      dayOfWeek: pulumi.Input.fromValue(WeekDayOfMonthDayOfWeek.fromValue(map['dayOfWeek']! as String)),
      dayOffset: (() { final guardedValue = map['dayOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      weekOrdinal: pulumi.Input.fromValue(map['weekOrdinal'] as int),
    );
  }
}

