// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_schedule_day.dart';

class JobRecurrenceScheduleMonthlyOccurrence {
  /// Gets or sets the day. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
  final pulumi.Input<JobScheduleDay>? day;
  /// Gets or sets the occurrence. Must be between -5 and 5.
  final pulumi.Input<int>? occurrence;

  /// Creates a new [JobRecurrenceScheduleMonthlyOccurrence].
  /// [day] Gets or sets the day. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
  /// [occurrence] Gets or sets the occurrence. Must be between -5 and 5.
  const JobRecurrenceScheduleMonthlyOccurrence({
    this.day,
    this.occurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?pulumi.Input.mapOptionalInputValue<JobScheduleDay, String>(day, (value) => value.wireValue),
      'occurrence': ?occurrence,
    };
  }

  factory JobRecurrenceScheduleMonthlyOccurrence.fromMap(Map<String, dynamic> map) {
    return JobRecurrenceScheduleMonthlyOccurrence(
      day: (() { final guardedValue = map['day']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobScheduleDay.fromValue(guardedValue as String)); })(),
      occurrence: (() { final guardedValue = map['occurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

