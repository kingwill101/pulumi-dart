// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_study_spec_metric_spec_goal.dart';
import 'google_cloud_aiplatform_v1_study_spec_metric_spec_safety_metric_config.dart';

/// Represents a metric to optimize.
class GoogleCloudAiplatformV1StudySpecMetricSpec {
  /// The optimization goal of the metric.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecMetricSpecGoal> goal;
  /// The ID of the metric. Must not contain whitespaces and must be unique amongst all MetricSpecs.
  final pulumi.Input<String> metricId;
  /// Used for safe search. In the case, the metric will be a safety metric. You must provide a separate metric for objective metric.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig>? safetyConfig;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecMetricSpec].
  /// [goal] The optimization goal of the metric.
  /// [metricId] The ID of the metric. Must not contain whitespaces and must be unique amongst all MetricSpecs.
  /// [safetyConfig] Used for safe search. In the case, the metric will be a safety metric. You must provide a separate metric for objective metric.
  GoogleCloudAiplatformV1StudySpecMetricSpec({
    required this.goal,
    required this.metricId,
    this.safetyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goal': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1StudySpecMetricSpecGoal, String>(goal, (value) => value.value),
      'metricId': metricId,
      'safetyConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig, Map<String, dynamic>>(safetyConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1StudySpecMetricSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecMetricSpec(
      goal: (GoogleCloudAiplatformV1StudySpecMetricSpecGoal.fromValue(map['goal'] as String)).input(),
      metricId: (map['metricId'] as String).input(),
      safetyConfig: map['safetyConfig'] == null ? null : (GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig.fromMap((map['safetyConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

