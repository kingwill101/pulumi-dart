// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_study_config_metric_spec_goal.dart';

/// Represents a metric to optimize.
class GoogleCloudMlV1StudyConfigMetricSpec {
  /// The optimization goal of the metric.
  final pulumi.Input<GoogleCloudMlV1StudyConfigMetricSpecGoal> goal;
  /// The name of the metric.
  final pulumi.Input<String> metric;

  /// Creates a new [GoogleCloudMlV1StudyConfigMetricSpec].
  /// [goal] The optimization goal of the metric.
  /// [metric] The name of the metric.
  GoogleCloudMlV1StudyConfigMetricSpec({
    required this.goal,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goal': pulumi.Input.mapInputValue<GoogleCloudMlV1StudyConfigMetricSpecGoal, String>(goal, (value) => value.wireValue),
      'metric': metric,
    };
  }

  factory GoogleCloudMlV1StudyConfigMetricSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigMetricSpec(
      goal: pulumi.Input.fromValue(GoogleCloudMlV1StudyConfigMetricSpecGoal.fromValue(map['goal']! as String)),
      metric: pulumi.Input.fromValue(map['metric'] as String),
    );
  }
}

