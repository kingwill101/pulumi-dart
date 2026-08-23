// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the schedule the pipeline runs on.
class GoogleCloudDatapipelinesV1ScheduleSpecResponse {
  /// When the next Scheduler job is going to run.
  final pulumi.Input<String> nextJobTime;
  /// Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler.
  final pulumi.Input<String> schedule;
  /// Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed.
  final pulumi.Input<String> timeZone;

  /// Creates a new [GoogleCloudDatapipelinesV1ScheduleSpecResponse].
  /// [nextJobTime] When the next Scheduler job is going to run.
  /// [schedule] Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler.
  /// [timeZone] Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed.
  const GoogleCloudDatapipelinesV1ScheduleSpecResponse({
    required this.nextJobTime,
    required this.schedule,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextJobTime': nextJobTime,
      'schedule': schedule,
      'timeZone': timeZone,
    };
  }

  factory GoogleCloudDatapipelinesV1ScheduleSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1ScheduleSpecResponse(
      nextJobTime: pulumi.Input.fromValue(map['nextJobTime'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}
