// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_nas_job_spec_multi_trial_algorithm_spec_metric_spec_goal.dart';

/// Represents a metric to optimize.
class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec {
  /// The optimization goal of the metric.
  final pulumi.Input<GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal> goal;
  /// The ID of the metric. Must not contain whitespaces.
  final pulumi.Input<String> metricId;

  /// Creates a new [GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec].
  /// [goal] The optimization goal of the metric.
  /// [metricId] The ID of the metric. Must not contain whitespaces.
  GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec({
    required this.goal,
    required this.metricId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goal': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal, String>(goal, (value) => value.value),
      'metricId': metricId,
    };
  }

  factory GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec(
      goal: (GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal.fromValue(map['goal'] as String)).input(),
      metricId: (map['metricId'] as String).input(),
    );
  }
}

