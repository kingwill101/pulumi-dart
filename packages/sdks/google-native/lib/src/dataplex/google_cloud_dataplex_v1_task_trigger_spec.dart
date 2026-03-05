// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_task_trigger_spec_type.dart';

/// Task scheduling and trigger settings.
class GoogleCloudDataplexV1TaskTriggerSpec {
  /// Optional. Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks.
  final pulumi.Input<bool>? disabled;
  /// Optional. Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task.
  final pulumi.Input<int>? maxRetries;
  /// Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks.
  final pulumi.Input<String>? schedule;
  /// Optional. The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING.
  final pulumi.Input<String>? startTime;
  /// Immutable. Trigger type of the user-specified Task.
  final pulumi.Input<GoogleCloudDataplexV1TaskTriggerSpecType> type;

  /// Creates a new [GoogleCloudDataplexV1TaskTriggerSpec].
  /// [disabled] Optional. Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks.
  /// [maxRetries] Optional. Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task.
  /// [schedule] Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks.
  /// [startTime] Optional. The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING.
  /// [type] Immutable. Trigger type of the user-specified Task.
  GoogleCloudDataplexV1TaskTriggerSpec({
    this.disabled,
    this.maxRetries,
    this.schedule,
    this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'maxRetries': ?maxRetries,
      'schedule': ?schedule,
      'startTime': ?startTime,
      'type': pulumi.Input.mapInputValue<GoogleCloudDataplexV1TaskTriggerSpecType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDataplexV1TaskTriggerSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskTriggerSpec(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(GoogleCloudDataplexV1TaskTriggerSpecType.fromValue(map['type']! as String)),
    );
  }
}

