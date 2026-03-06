// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Task scheduling and trigger settings.
class GoogleCloudDataplexV1TaskTriggerSpecResponse {
  /// Optional. Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks.
  final pulumi.Input<bool> disabled;
  /// Optional. Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task.
  final pulumi.Input<int> maxRetries;
  /// Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks.
  final pulumi.Input<String> schedule;
  /// Optional. The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING.
  final pulumi.Input<String> startTime;
  /// Immutable. Trigger type of the user-specified Task.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDataplexV1TaskTriggerSpecResponse].
  /// [disabled] Optional. Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks.
  /// [maxRetries] Optional. Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task.
  /// [schedule] Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks.
  /// [startTime] Optional. The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING.
  /// [type] Immutable. Trigger type of the user-specified Task.
  const GoogleCloudDataplexV1TaskTriggerSpecResponse({
    required this.disabled,
    required this.maxRetries,
    required this.schedule,
    required this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'maxRetries': maxRetries,
      'schedule': schedule,
      'startTime': startTime,
      'type': type,
    };
  }

  factory GoogleCloudDataplexV1TaskTriggerSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskTriggerSpecResponse(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      maxRetries: pulumi.Input.fromValue(map['maxRetries'] as int),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

