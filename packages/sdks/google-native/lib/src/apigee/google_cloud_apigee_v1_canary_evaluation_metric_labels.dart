// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Labels that can be used to filter Apigee metrics.
class GoogleCloudApigeeV1CanaryEvaluationMetricLabels {
  /// The environment ID associated with the metrics.
  final pulumi.Input<String>? env;
  /// The instance ID associated with the metrics. In Apigee Hybrid, the value is configured during installation.
  final pulumi.Input<String> instanceId;
  /// The location associated with the metrics.
  final pulumi.Input<String> location;

  /// Creates a new [GoogleCloudApigeeV1CanaryEvaluationMetricLabels].
  /// [env] The environment ID associated with the metrics.
  /// [instanceId] The instance ID associated with the metrics. In Apigee Hybrid, the value is configured during installation.
  /// [location] The location associated with the metrics.
  GoogleCloudApigeeV1CanaryEvaluationMetricLabels({
    this.env,
    required this.instanceId,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'env': ?env,
      'instanceId': instanceId,
      'location': location,
    };
  }

  factory GoogleCloudApigeeV1CanaryEvaluationMetricLabels.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1CanaryEvaluationMetricLabels(
      env: map['env'] == null ? null : (map['env']! as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      location: (map['location'] as String).input(),
    );
  }
}

