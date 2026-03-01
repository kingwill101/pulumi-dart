// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering JobSchedule resources.
class JobScheduleState {
  /// The time at which the Stream Analytics job last produced an output.
  final pulumi.Input<String>? lastOutputTime;
  /// The starting mode of the Stream Analytics Job. Possible values are `JobStartTime`, `CustomTime` and `LastOutputEventTime`.
  ///
  /// > **Note:** Setting `start_mode` to `LastOutputEventTime` is only possible if the job had been previously started and produced output.
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
    pulumi.Output<String>? lastOutputTime,
    pulumi.Output<String>? startMode,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? streamAnalyticsJobId,
  }) :
      lastOutputTime = pulumi.Input.asOptionalInput<String>(lastOutputTime),
      startMode = pulumi.Input.asOptionalInput<String>(startMode),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      streamAnalyticsJobId = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobId);

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
      lastOutputTime: map['lastOutputTime'] == null ? null : pulumi.Output.create<String>(map['lastOutputTime'] as String),
      startMode: map['startMode'] == null ? null : pulumi.Output.create<String>(map['startMode'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      streamAnalyticsJobId: map['streamAnalyticsJobId'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobId'] as String),
    );
  }
}

