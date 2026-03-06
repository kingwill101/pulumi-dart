// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_trigger_schedule.dart';

/// DataScan scheduling and trigger settings.
class GoogleCloudDataplexV1Trigger {
  /// The scan runs once via RunDataScan API.
  final pulumi.Input<Map<String, dynamic>>? onDemand;
  /// The scan is scheduled to run periodically.
  final pulumi.Input<GoogleCloudDataplexV1TriggerSchedule>? schedule;

  /// Creates a new [GoogleCloudDataplexV1Trigger].
  /// [onDemand] The scan runs once via RunDataScan API.
  /// [schedule] The scan is scheduled to run periodically.
  const GoogleCloudDataplexV1Trigger({
    this.onDemand,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemand': ?onDemand,
      'schedule': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1TriggerSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1Trigger.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1Trigger(
      onDemand: (() { final guardedValue = map['onDemand']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1TriggerSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

