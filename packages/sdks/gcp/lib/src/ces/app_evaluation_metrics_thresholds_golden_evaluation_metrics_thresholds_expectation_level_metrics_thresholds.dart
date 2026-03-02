// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds {
  /// The success threshold for individual tool invocation parameter
  /// correctness. Must be a float between 0 and 1. Default is 1.0.
  final pulumi.Input<double>? toolInvocationParameterCorrectnessThreshold;

  /// Creates a new [AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds].
  /// [toolInvocationParameterCorrectnessThreshold] The success threshold for individual tool invocation parameter
  AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds({
    this.toolInvocationParameterCorrectnessThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolInvocationParameterCorrectnessThreshold': ?toolInvocationParameterCorrectnessThreshold,
    };
  }

  factory AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds.fromMap(Map<String, dynamic> map) {
    return AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds(
      toolInvocationParameterCorrectnessThreshold: map['toolInvocationParameterCorrectnessThreshold'] == null ? null : (map['toolInvocationParameterCorrectnessThreshold']! as double).input(),
    );
  }
}

