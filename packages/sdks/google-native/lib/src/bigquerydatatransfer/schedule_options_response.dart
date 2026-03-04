// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options customizing the data transfer schedule.
class ScheduleOptionsResponse {
  /// If true, automatic scheduling of data transfer runs for this configuration will be disabled. The runs can be started on ad-hoc basis using StartManualTransferRuns API. When automatic scheduling is disabled, the TransferConfig.schedule field will be ignored.
  final pulumi.Input<bool> disableAutoScheduling;

  /// Defines time to stop scheduling transfer runs. A transfer run cannot be scheduled at or after the end time. The end time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.
  final pulumi.Input<String> endTime;

  /// Specifies time to start scheduling transfer runs. The first run will be scheduled at or after the start time according to a recurrence pattern defined in the schedule string. The start time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.
  final pulumi.Input<String> startTime;

  /// Creates a new [ScheduleOptionsResponse].
  /// [disableAutoScheduling] If true, automatic scheduling of data transfer runs for this configuration will be disabled. The runs can be started on ad-hoc basis using StartManualTransferRuns API. When automatic scheduling is disabled, the TransferConfig.schedule field will be ignored.
  /// [endTime] Defines time to stop scheduling transfer runs. A transfer run cannot be scheduled at or after the end time. The end time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.
  /// [startTime] Specifies time to start scheduling transfer runs. The first run will be scheduled at or after the start time according to a recurrence pattern defined in the schedule string. The start time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.
  ScheduleOptionsResponse({
    required this.disableAutoScheduling,
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableAutoScheduling': disableAutoScheduling,
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory ScheduleOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleOptionsResponse(
      disableAutoScheduling: pulumi.Input.fromValue(
        map['disableAutoScheduling'] as bool,
      ),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
