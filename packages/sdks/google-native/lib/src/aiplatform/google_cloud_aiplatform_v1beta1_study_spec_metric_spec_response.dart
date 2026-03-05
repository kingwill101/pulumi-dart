// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_study_spec_metric_spec_safety_metric_config_response.dart';

/// Represents a metric to optimize.
class GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse {
  /// The optimization goal of the metric.
  final pulumi.Input<String> goal;
  /// The ID of the metric. Must not contain whitespaces and must be unique amongst all MetricSpecs.
  final pulumi.Input<String> metricId;
  /// Used for safe search. In the case, the metric will be a safety metric. You must provide a separate metric for objective metric.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecMetricSpecSafetyMetricConfigResponse> safetyConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse].
  /// [goal] The optimization goal of the metric.
  /// [metricId] The ID of the metric. Must not contain whitespaces and must be unique amongst all MetricSpecs.
  /// [safetyConfig] Used for safe search. In the case, the metric will be a safety metric. You must provide a separate metric for objective metric.
  GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse({
    required this.goal,
    required this.metricId,
    required this.safetyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goal': goal,
      'metricId': metricId,
      'safetyConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecMetricSpecSafetyMetricConfigResponse, Map<String, dynamic>>(safetyConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse(
      goal: pulumi.Input.fromValue(map['goal'] as String),
      metricId: pulumi.Input.fromValue(map['metricId'] as String),
      safetyConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecMetricSpecSafetyMetricConfigResponse.fromMap((map['safetyConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

