// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response_cloudtasks_v2beta3.dart';

/// The status of a task attempt.
class AttemptResponseCloudtasksV2beta3 {
  /// The time that this attempt was dispatched. `dispatch_time` will be truncated to the nearest microsecond.
  final pulumi.Input<String> dispatchTime;
  /// The response from the worker for this attempt. If `response_time` is unset, then the task has not been attempted or is currently running and the `response_status` field is meaningless.
  final pulumi.Input<StatusResponseCloudtasksV2beta3> responseStatus;
  /// The time that this attempt response was received. `response_time` will be truncated to the nearest microsecond.
  final pulumi.Input<String> responseTime;
  /// The time that this attempt was scheduled. `schedule_time` will be truncated to the nearest microsecond.
  final pulumi.Input<String> scheduleTime;

  /// Creates a new [AttemptResponseCloudtasksV2beta3].
  /// [dispatchTime] The time that this attempt was dispatched. `dispatch_time` will be truncated to the nearest microsecond.
  /// [responseStatus] The response from the worker for this attempt. If `response_time` is unset, then the task has not been attempted or is currently running and the `response_status` field is meaningless.
  /// [responseTime] The time that this attempt response was received. `response_time` will be truncated to the nearest microsecond.
  /// [scheduleTime] The time that this attempt was scheduled. `schedule_time` will be truncated to the nearest microsecond.
  AttemptResponseCloudtasksV2beta3({
    required this.dispatchTime,
    required this.responseStatus,
    required this.responseTime,
    required this.scheduleTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchTime': dispatchTime,
      'responseStatus': pulumi.Input.mapInputValue<StatusResponseCloudtasksV2beta3, Map<String, dynamic>>(responseStatus, (value) => value.toMap()),
      'responseTime': responseTime,
      'scheduleTime': scheduleTime,
    };
  }

  factory AttemptResponseCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return AttemptResponseCloudtasksV2beta3(
      dispatchTime: (map['dispatchTime'] as String).input(),
      responseStatus: (StatusResponseCloudtasksV2beta3.fromMap((map['responseStatus'] as Map).cast<String, dynamic>())).input(),
      responseTime: (map['responseTime'] as String).input(),
      scheduleTime: (map['scheduleTime'] as String).input(),
    );
  }
}

