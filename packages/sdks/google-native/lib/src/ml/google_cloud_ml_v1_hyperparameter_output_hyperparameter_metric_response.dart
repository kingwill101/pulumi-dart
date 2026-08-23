// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An observed value of a metric.
class GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse {
  /// The objective value at this training step.
  final pulumi.Input<double> objectiveValue;
  /// The global training step for this metric.
  final pulumi.Input<String> trainingStep;

  /// Creates a new [GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse].
  /// [objectiveValue] The objective value at this training step.
  /// [trainingStep] The global training step for this metric.
  const GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse({
    required this.objectiveValue,
    required this.trainingStep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectiveValue': objectiveValue,
      'trainingStep': trainingStep,
    };
  }

  factory GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse(
      objectiveValue: pulumi.Input.fromValue(map['objectiveValue'] as double),
      trainingStep: pulumi.Input.fromValue(map['trainingStep'] as String),
    );
  }
}
