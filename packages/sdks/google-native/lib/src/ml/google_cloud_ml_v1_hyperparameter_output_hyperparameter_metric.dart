// ignore_for_file: unused_element, unnecessary_cast


/// An observed value of a metric.
class GoogleCloudMlV1HyperparameterOutputHyperparameterMetric {
  /// The objective value at this training step.
  final double? objectiveValue;
  /// The global training step for this metric.
  final String? trainingStep;

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
      objectiveValue: map['objectiveValue'] == null ? null : map['objectiveValue'] as double,
      trainingStep: map['trainingStep'] == null ? null : map['trainingStep'] as String,
    );
  }
}

