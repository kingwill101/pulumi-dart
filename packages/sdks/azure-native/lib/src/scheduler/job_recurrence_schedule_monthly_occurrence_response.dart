// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobRecurrenceScheduleMonthlyOccurrenceResponse {
  /// Gets or sets the day. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
  final pulumi.Input<String>? day;
  /// Gets or sets the occurrence. Must be between -5 and 5.
  final pulumi.Input<int>? occurrence;

  /// Creates a new [JobRecurrenceScheduleMonthlyOccurrenceResponse].
  /// [day] Gets or sets the day. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
  /// [occurrence] Gets or sets the occurrence. Must be between -5 and 5.
  JobRecurrenceScheduleMonthlyOccurrenceResponse({
    this.day,
    this.occurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'occurrence': ?occurrence,
    };
  }

  factory JobRecurrenceScheduleMonthlyOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return JobRecurrenceScheduleMonthlyOccurrenceResponse(
      day: map['day'] == null ? null : (map['day']! as String).input(),
      occurrence: map['occurrence'] == null ? null : (map['occurrence']! as int).input(),
    );
  }
}

