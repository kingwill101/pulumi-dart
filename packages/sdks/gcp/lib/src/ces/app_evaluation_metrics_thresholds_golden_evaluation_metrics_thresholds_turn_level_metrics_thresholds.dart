// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds {
  /// The success threshold for overall tool invocation correctness. Must be
  /// a float between 0 and 1. Default is 1.0.
  final pulumi.Input<double>? overallToolInvocationCorrectnessThreshold;
  /// The success threshold for semantic similarity. Must be an integer
  /// between 0 and 4. Default is >= 3.
  final pulumi.Input<int>? semanticSimilaritySuccessThreshold;

  /// Creates a new [AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds].
  /// [overallToolInvocationCorrectnessThreshold] The success threshold for overall tool invocation correctness. Must be
  /// [semanticSimilaritySuccessThreshold] The success threshold for semantic similarity. Must be an integer
  AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds({
    this.overallToolInvocationCorrectnessThreshold,
    this.semanticSimilaritySuccessThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overallToolInvocationCorrectnessThreshold': ?overallToolInvocationCorrectnessThreshold,
      'semanticSimilaritySuccessThreshold': ?semanticSimilaritySuccessThreshold,
    };
  }

  factory AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds.fromMap(Map<String, dynamic> map) {
    return AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds(
      overallToolInvocationCorrectnessThreshold: map['overallToolInvocationCorrectnessThreshold'] == null ? null : (map['overallToolInvocationCorrectnessThreshold']! as double).input(),
      semanticSimilaritySuccessThreshold: map['semanticSimilaritySuccessThreshold'] == null ? null : (map['semanticSimilaritySuccessThreshold']! as int).input(),
    );
  }
}

