// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of a scheduled run.
class GoogleCloudAiplatformV1ScheduleRunResponseResponse {
  /// The response of the scheduled run.
  final pulumi.Input<String> runResponse;
  /// The scheduled run time based on the user-specified schedule.
  final pulumi.Input<String> scheduledRunTime;

  /// Creates a new [GoogleCloudAiplatformV1ScheduleRunResponseResponse].
  /// [runResponse] The response of the scheduled run.
  /// [scheduledRunTime] The scheduled run time based on the user-specified schedule.
  const GoogleCloudAiplatformV1ScheduleRunResponseResponse({
    required this.runResponse,
    required this.scheduledRunTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runResponse': runResponse,
      'scheduledRunTime': scheduledRunTime,
    };
  }

  factory GoogleCloudAiplatformV1ScheduleRunResponseResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ScheduleRunResponseResponse(
      runResponse: pulumi.Input.fromValue(map['runResponse'] as String),
      scheduledRunTime: pulumi.Input.fromValue(map['scheduledRunTime'] as String),
    );
  }
}

