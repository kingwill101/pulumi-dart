// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleLastScheduledRunResponse {
  /// (Output)
  /// The response of the scheduled run.
  final pulumi.Input<String>? runResponse;
  /// (Output)
  /// The scheduled run time based on the user-specified schedule.
  final pulumi.Input<String>? scheduledRunTime;

  /// Creates a new [ScheduleLastScheduledRunResponse].
  /// [runResponse] (Output)
  /// [scheduledRunTime] (Output)
  const ScheduleLastScheduledRunResponse({
    this.runResponse,
    this.scheduledRunTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runResponse': ?runResponse,
      'scheduledRunTime': ?scheduledRunTime,
    };
  }

  factory ScheduleLastScheduledRunResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleLastScheduledRunResponse(
      runResponse: (() { final guardedValue = map['runResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledRunTime: (() { final guardedValue = map['scheduledRunTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
