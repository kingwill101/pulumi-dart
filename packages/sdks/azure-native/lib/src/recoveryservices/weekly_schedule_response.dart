// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WeeklyScheduleResponse {
  final pulumi.Input<List<String>>? scheduleRunDays;
  /// List of times of day this schedule has to be run.
  final pulumi.Input<List<String>>? scheduleRunTimes;

  /// Creates a new [WeeklyScheduleResponse].
  /// [scheduleRunDays] Optional.
  /// [scheduleRunTimes] List of times of day this schedule has to be run.
  const WeeklyScheduleResponse({
    this.scheduleRunDays,
    this.scheduleRunTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleRunDays': ?scheduleRunDays,
      'scheduleRunTimes': ?scheduleRunTimes,
    };
  }

  factory WeeklyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleResponse(
      scheduleRunDays: (() { final guardedValue = map['scheduleRunDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scheduleRunTimes: (() { final guardedValue = map['scheduleRunTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
