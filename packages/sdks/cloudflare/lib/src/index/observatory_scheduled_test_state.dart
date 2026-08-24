// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'observatory_scheduled_test_schedule.dart';
import 'observatory_scheduled_test_test.dart';

/// Input properties used for looking up and filtering ObservatoryScheduledTest resources.
class ObservatoryScheduledTestState {
  /// The frequency of the scheduled test. Defaults to WEEKLY for free plans, DAILY for paid plans.
  final pulumi.Input<String?>? frequency;
  /// A test region.
  /// Available values: "asia-east1", "asia-northeast1", "asia-northeast2", "asia-south1", "asia-southeast1", "australia-southeast1", "europe-north1", "europe-southwest1", "europe-west1", "europe-west2", "europe-west3", "europe-west4", "europe-west8", "europe-west9", "me-west1", "southamerica-east1", "us-central1", "us-east1", "us-east4", "us-south1", "us-west1".
  final pulumi.Input<String?>? region;
  /// The test schedule.
  final pulumi.Input<ObservatoryScheduledTestSchedule?>? schedule;
  final pulumi.Input<ObservatoryScheduledTestTest?>? test;
  /// A URL.
  final pulumi.Input<String?>? url;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ObservatoryScheduledTestState].
  /// [frequency] The frequency of the scheduled test. Defaults to WEEKLY for free plans, DAILY for paid plans.
  /// [region] A test region.
  /// [schedule] The test schedule.
  /// [test] Optional.
  /// [url] A URL.
  /// [zoneId] Identifier.
  const ObservatoryScheduledTestState({
    this.frequency,
    this.region,
    this.schedule,
    this.test,
    this.url,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'region': ?region,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ObservatoryScheduledTestSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'test': ?pulumi.Input.mapOptionalInputValue<ObservatoryScheduledTestTest, Map<String, dynamic>>(test, (value) => value.toMap()),
      'url': ?url,
      'zoneId': ?zoneId,
    };
  }

  factory ObservatoryScheduledTestState.fromMap(Map<String, dynamic> map) {
    return ObservatoryScheduledTestState(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObservatoryScheduledTestSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      test: (() { final guardedValue = map['test']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObservatoryScheduledTestTest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
