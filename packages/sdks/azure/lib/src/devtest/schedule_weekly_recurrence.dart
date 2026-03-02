// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleWeeklyRecurrence {
  /// The time when the schedule takes effect.
  final pulumi.Input<String> time;
  /// A list of days that this schedule takes effect . Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  final pulumi.Input<List<String>>? weekDays;

  /// Creates a new [ScheduleWeeklyRecurrence].
  /// [time] The time when the schedule takes effect.
  /// [weekDays] A list of days that this schedule takes effect . Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  ScheduleWeeklyRecurrence({
    required this.time,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time,
      'weekDays': ?weekDays,
    };
  }

  factory ScheduleWeeklyRecurrence.fromMap(Map<String, dynamic> map) {
    return ScheduleWeeklyRecurrence(
      time: (map['time'] as String).input(),
      weekDays: map['weekDays'] == null ? null : ((map['weekDays'] as List).cast<String>()).input(),
    );
  }
}

