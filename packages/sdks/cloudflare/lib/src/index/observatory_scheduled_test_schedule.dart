// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObservatoryScheduledTestSchedule {
  /// The frequency of the test.
  /// Available values: "DAILY", "WEEKLY".
  final pulumi.Input<String?>? frequency;
  /// A test region.
  /// Available values: "asia-east1", "asia-northeast1", "asia-northeast2", "asia-south1", "asia-southeast1", "australia-southeast1", "europe-north1", "europe-southwest1", "europe-west1", "europe-west2", "europe-west3", "europe-west4", "europe-west8", "europe-west9", "me-west1", "southamerica-east1", "us-central1", "us-east1", "us-east4", "us-south1", "us-west1".
  final pulumi.Input<String?>? region;
  /// A URL.
  final pulumi.Input<String?>? url;

  /// Creates a new [ObservatoryScheduledTestSchedule].
  /// [frequency] The frequency of the test.
  /// [region] A test region.
  /// [url] A URL.
  const ObservatoryScheduledTestSchedule({
    this.frequency,
    this.region,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'region': ?region,
      'url': ?url,
    };
  }

  factory ObservatoryScheduledTestSchedule.fromMap(Map<String, dynamic> map) {
    return ObservatoryScheduledTestSchedule(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
