// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_observatory_scheduled_test_observatory_scheduled_test_args_doc}
/// The set of arguments for ObservatoryScheduledTest.
/// {@endtemplate}
/// {@macro pulumi_index_observatory_scheduled_test_observatory_scheduled_test_args_doc}
class ObservatoryScheduledTestArgs {
  /// The frequency of the scheduled test. Defaults to WEEKLY for free plans, DAILY for paid plans.
  final pulumi.Input<String?>? frequency;
  /// A test region.
  /// Available values: "asia-east1", "asia-northeast1", "asia-northeast2", "asia-south1", "asia-southeast1", "australia-southeast1", "europe-north1", "europe-southwest1", "europe-west1", "europe-west2", "europe-west3", "europe-west4", "europe-west8", "europe-west9", "me-west1", "southamerica-east1", "us-central1", "us-east1", "us-east4", "us-south1", "us-west1".
  final pulumi.Input<String?>? region;
  /// A URL.
  final pulumi.Input<String> url;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ObservatoryScheduledTestArgs].
  /// [frequency] The frequency of the scheduled test. Defaults to WEEKLY for free plans, DAILY for paid plans.
  /// [region] A test region.
  /// [url] A URL.
  /// [zoneId] Identifier.
  const ObservatoryScheduledTestArgs({
    this.frequency,
    this.region,
    required this.url,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'region': ?region,
      'url': url,
      'zoneId': zoneId,
    };
  }

  factory ObservatoryScheduledTestArgs.fromMap(Map<String, dynamic> map) {
    return ObservatoryScheduledTestArgs(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
