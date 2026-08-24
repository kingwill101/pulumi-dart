// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_observatory_scheduled_test_get_observatory_scheduled_test_args_doc}
/// Arguments for getObservatoryScheduledTest.
/// {@endtemplate}
/// {@macro pulumi_index_get_observatory_scheduled_test_get_observatory_scheduled_test_args_doc}
class GetObservatoryScheduledTestArgs {
  /// A test region.
  /// Available values: "asia-east1", "asia-northeast1", "asia-northeast2", "asia-south1", "asia-southeast1", "australia-southeast1", "europe-north1", "europe-southwest1", "europe-west1", "europe-west2", "europe-west3", "europe-west4", "europe-west8", "europe-west9", "me-west1", "southamerica-east1", "us-central1", "us-east1", "us-east4", "us-south1", "us-west1".
  final pulumi.Input<String?>? region;
  /// A URL.
  final pulumi.Input<String> url;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetObservatoryScheduledTestArgs].
  /// [region] A test region.
  /// [url] A URL.
  /// [zoneId] Identifier.
  const GetObservatoryScheduledTestArgs({
    this.region,
    required this.url,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'url': url,
      'zoneId': ?zoneId,
    };
  }

  factory GetObservatoryScheduledTestArgs.fromMap(Map<String, dynamic> map) {
    return GetObservatoryScheduledTestArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
