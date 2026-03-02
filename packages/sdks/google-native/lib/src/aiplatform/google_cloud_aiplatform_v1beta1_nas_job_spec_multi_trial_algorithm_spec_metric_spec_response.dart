// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a metric to optimize.
class GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse {
  /// The optimization goal of the metric.
  final pulumi.Input<String> goal;
  /// The ID of the metric. Must not contain whitespaces.
  final pulumi.Input<String> metricId;

  /// Creates a new [GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse].
  /// [goal] The optimization goal of the metric.
  /// [metricId] The ID of the metric. Must not contain whitespaces.
  GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse({
    required this.goal,
    required this.metricId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goal': goal,
      'metricId': metricId,
    };
  }

  factory GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse(
      goal: (map['goal'] as String).input(),
      metricId: (map['metricId'] as String).input(),
    );
  }
}

