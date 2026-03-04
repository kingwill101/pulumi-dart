// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the schedule the pipeline runs on.
class GoogleCloudDatapipelinesV1ScheduleSpec {
  /// Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler.
  final pulumi.Input<String>? schedule;

  /// Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [GoogleCloudDatapipelinesV1ScheduleSpec].
  /// [schedule] Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler.
  /// [timeZone] Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed.
  GoogleCloudDatapipelinesV1ScheduleSpec({this.schedule, this.timeZone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'schedule': ?schedule, 'timeZone': ?timeZone};
  }

  factory GoogleCloudDatapipelinesV1ScheduleSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatapipelinesV1ScheduleSpec(
      schedule: (() {
        final guardedValue = map['schedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
