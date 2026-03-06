// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scan schedule configuration.
class ScheduleWebsecurityscannerV1beta {
  /// The duration of time between executions in days.
  final pulumi.Input<int> intervalDurationDays;
  /// A timestamp indicates when the next run will be scheduled. The value is refreshed by the server after each run. If unspecified, it will default to current server time, which means the scan will be scheduled to start immediately.
  final pulumi.Input<String>? scheduleTime;

  /// Creates a new [ScheduleWebsecurityscannerV1beta].
  /// [intervalDurationDays] The duration of time between executions in days.
  /// [scheduleTime] A timestamp indicates when the next run will be scheduled. The value is refreshed by the server after each run. If unspecified, it will default to current server time, which means the scan will be scheduled to start immediately.
  const ScheduleWebsecurityscannerV1beta({
    required this.intervalDurationDays,
    this.scheduleTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalDurationDays': intervalDurationDays,
      'scheduleTime': ?scheduleTime,
    };
  }

  factory ScheduleWebsecurityscannerV1beta.fromMap(Map<String, dynamic> map) {
    return ScheduleWebsecurityscannerV1beta(
      intervalDurationDays: pulumi.Input.fromValue(map['intervalDurationDays'] as int),
      scheduleTime: (() { final guardedValue = map['scheduleTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

