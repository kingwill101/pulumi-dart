// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An observed value of a metric.
class GoogleCloudMlV1HyperparameterOutputHyperparameterMetric {
  /// The objective value at this training step.
  final pulumi.Input<double>? objectiveValue;
  /// The global training step for this metric.
  final pulumi.Input<String>? trainingStep;

  /// Creates a new [GoogleCloudMlV1HyperparameterOutputHyperparameterMetric].
  /// [objectiveValue] The objective value at this training step.
  /// [trainingStep] The global training step for this metric.
  GoogleCloudMlV1HyperparameterOutputHyperparameterMetric({
    this.objectiveValue,
    this.trainingStep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectiveValue': ?objectiveValue,
      'trainingStep': ?trainingStep,
    };
  }

  factory GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1HyperparameterOutputHyperparameterMetric(
      objectiveValue: (() { final guardedValue = map['objectiveValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      trainingStep: (() { final guardedValue = map['trainingStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

