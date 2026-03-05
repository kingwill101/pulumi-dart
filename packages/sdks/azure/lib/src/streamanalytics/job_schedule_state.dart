// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering JobSchedule resources.
class JobScheduleState {
  /// The time at which the Stream Analytics job last produced an output.
  final pulumi.Input<String>? lastOutputTime;
  /// The starting mode of the Stream Analytics Job. Possible values are `JobStartTime`, `CustomTime` and `LastOutputEventTime`.
  ///
  /// &gt; **Note:** Setting `start_mode` to `LastOutputEventTime` is only possible if the job had been previously started and produced output.
  final pulumi.Input<String>? startMode;
  /// The time in ISO8601 format at which the Stream Analytics Job should be started e.g. `2022-04-01T00:00:00Z`. This property can only be specified if `start_mode` is set to `CustomTime`
  final pulumi.Input<String>? startTime;
  /// The ID of the Stream Analytics Job that should be scheduled or started. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobId;

  /// Creates a new [JobScheduleState].
  /// [lastOutputTime] The time at which the Stream Analytics job last produced an output.
  /// [startMode] The starting mode of the Stream Analytics Job. Possible values are `JobStartTime`, `CustomTime` and `LastOutputEventTime`.
  /// [startTime] The time in ISO8601 format at which the Stream Analytics Job should be started e.g. `2022-04-01T00:00:00Z`. This property can only be specified if `start_mode` is set to `CustomTime`
  /// [streamAnalyticsJobId] The ID of the Stream Analytics Job that should be scheduled or started. Changing this forces a new resource to be created.
  JobScheduleState({
    this.lastOutputTime,
    this.startMode,
    this.startTime,
    this.streamAnalyticsJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastOutputTime': ?lastOutputTime,
      'startMode': ?startMode,
      'startTime': ?startTime,
      'streamAnalyticsJobId': ?streamAnalyticsJobId,
    };
  }

  factory JobScheduleState.fromMap(Map<String, dynamic> map) {
    return JobScheduleState(
      lastOutputTime: (() { final guardedValue = map['lastOutputTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startMode: (() { final guardedValue = map['startMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamAnalyticsJobId: (() { final guardedValue = map['streamAnalyticsJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

