// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response_cloudtasks_v2beta2.dart';

/// The status of a task attempt.
class AttemptStatusResponse {
  /// The time that this attempt was dispatched. `dispatch_time` will be truncated to the nearest microsecond.
  final pulumi.Input<String> dispatchTime;

  /// The response from the target for this attempt. If the task has not been attempted or the task is currently running then the response status is unset.
  final pulumi.Input<StatusResponseCloudtasksV2beta2> responseStatus;

  /// The time that this attempt response was received. `response_time` will be truncated to the nearest microsecond.
  final pulumi.Input<String> responseTime;

  /// The time that this attempt was scheduled. `schedule_time` will be truncated to the nearest microsecond.
  final pulumi.Input<String> scheduleTime;

  /// Creates a new [AttemptStatusResponse].
  /// [dispatchTime] The time that this attempt was dispatched. `dispatch_time` will be truncated to the nearest microsecond.
  /// [responseStatus] The response from the target for this attempt. If the task has not been attempted or the task is currently running then the response status is unset.
  /// [responseTime] The time that this attempt response was received. `response_time` will be truncated to the nearest microsecond.
  /// [scheduleTime] The time that this attempt was scheduled. `schedule_time` will be truncated to the nearest microsecond.
  AttemptStatusResponse({
    required this.dispatchTime,
    required this.responseStatus,
    required this.responseTime,
    required this.scheduleTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchTime': dispatchTime,
      'responseStatus':
          pulumi.Input.mapInputValue<
            StatusResponseCloudtasksV2beta2,
            Map<String, dynamic>
          >(responseStatus, (value) => value.toMap()),
      'responseTime': responseTime,
      'scheduleTime': scheduleTime,
    };
  }

  factory AttemptStatusResponse.fromMap(Map<String, dynamic> map) {
    return AttemptStatusResponse(
      dispatchTime: pulumi.Input.fromValue(map['dispatchTime'] as String),
      responseStatus: pulumi.Input.fromValue(
        StatusResponseCloudtasksV2beta2.fromMap(
          (map['responseStatus']! as Map).cast<String, dynamic>(),
        ),
      ),
      responseTime: pulumi.Input.fromValue(map['responseTime'] as String),
      scheduleTime: pulumi.Input.fromValue(map['scheduleTime'] as String),
    );
  }
}
