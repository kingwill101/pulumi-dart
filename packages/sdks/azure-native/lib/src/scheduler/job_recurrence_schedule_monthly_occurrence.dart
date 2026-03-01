// ignore_for_file: unused_element, unnecessary_cast

import 'job_schedule_day.dart';

class JobRecurrenceScheduleMonthlyOccurrence {
  /// Gets or sets the day. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
  final JobScheduleDay? day;
  /// Gets or sets the occurrence. Must be between -5 and 5.
  final int? occurrence;

  /// Creates a new [JobRecurrenceScheduleMonthlyOccurrence].
  /// [day] Gets or sets the day. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
  /// [occurrence] Gets or sets the occurrence. Must be between -5 and 5.
  JobRecurrenceScheduleMonthlyOccurrence({
    this.day,
    this.occurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day == null ? null : day!.value,
      'occurrence': ?occurrence,
    };
  }

  factory JobRecurrenceScheduleMonthlyOccurrence.fromMap(Map<String, dynamic> map) {
    return JobRecurrenceScheduleMonthlyOccurrence(
      day: map['day'] == null ? null : JobScheduleDay.fromValue(map['day'] as String),
      occurrence: map['occurrence'] == null ? null : map['occurrence'] as int,
    );
  }
}

