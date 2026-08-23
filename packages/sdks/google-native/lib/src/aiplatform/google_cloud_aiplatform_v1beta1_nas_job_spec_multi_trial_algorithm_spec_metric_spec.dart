// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_nas_job_spec_multi_trial_algorithm_spec_metric_spec_goal.dart';

/// Represents a metric to optimize.
class GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpec {
  /// The optimization goal of the metric.
  final pulumi.Input<GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal> goal;
  /// The ID of the metric. Must not contain whitespaces.
  final pulumi.Input<String> metricId;

  /// Creates a new [GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpec].
  /// [goal] The optimization goal of the metric.
  /// [metricId] The ID of the metric. Must not contain whitespaces.
  const GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpec({
    required this.goal,
    required this.metricId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goal': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal, String>(goal, (value) => value.wireValue),
      'metricId': metricId,
    };
  }

  factory GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpec(
      goal: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal.fromValue(map['goal']! as String)),
      metricId: pulumi.Input.fromValue(map['metricId'] as String),
    );
  }
}
