// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hourly schedule.
class HourlySchedule {
  /// Interval at which backup needs to be triggered. For hourly the value
  /// can be 4/6/8/12
  final pulumi.Input<int>? interval;

  /// To specify duration of the backup window
  final pulumi.Input<int>? scheduleWindowDuration;

  /// To specify start time of the backup window
  final pulumi.Input<String>? scheduleWindowStartTime;

  /// Creates a new [HourlySchedule].
  /// [interval] Interval at which backup needs to be triggered. For hourly the value
  /// [scheduleWindowDuration] To specify duration of the backup window
  /// [scheduleWindowStartTime] To specify start time of the backup window
  HourlySchedule({
    this.interval,
    this.scheduleWindowDuration,
    this.scheduleWindowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'scheduleWindowDuration': ?scheduleWindowDuration,
      'scheduleWindowStartTime': ?scheduleWindowStartTime,
    };
  }

  factory HourlySchedule.fromMap(Map<String, dynamic> map) {
    return HourlySchedule(
      interval: (() {
        final guardedValue = map['interval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scheduleWindowDuration: (() {
        final guardedValue = map['scheduleWindowDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scheduleWindowStartTime: (() {
        final guardedValue = map['scheduleWindowStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
