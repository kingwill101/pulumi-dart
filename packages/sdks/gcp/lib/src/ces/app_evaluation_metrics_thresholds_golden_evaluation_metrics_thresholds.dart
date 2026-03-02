// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds_expectation_level_metrics_thresholds.dart';
import 'app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds_turn_level_metrics_thresholds.dart';

class AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds {
  /// Expectation level metrics thresholds.
  /// Structure is documented below.
  final pulumi.Input<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds>? expectationLevelMetricsThresholds;
  /// Turn level metrics thresholds.
  /// Structure is documented below.
  final pulumi.Input<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds>? turnLevelMetricsThresholds;

  /// Creates a new [AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds].
  /// [expectationLevelMetricsThresholds] Expectation level metrics thresholds.
  /// [turnLevelMetricsThresholds] Turn level metrics thresholds.
  AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds({
    this.expectationLevelMetricsThresholds,
    this.turnLevelMetricsThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expectationLevelMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds, Map<String, dynamic>>(expectationLevelMetricsThresholds, (value) => value.toMap()),
      'turnLevelMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds, Map<String, dynamic>>(turnLevelMetricsThresholds, (value) => value.toMap()),
    };
  }

  factory AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds.fromMap(Map<String, dynamic> map) {
    return AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds(
      expectationLevelMetricsThresholds: map['expectationLevelMetricsThresholds'] == null ? null : (AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds.fromMap((map['expectationLevelMetricsThresholds'] as Map).cast<String, dynamic>())).input(),
      turnLevelMetricsThresholds: map['turnLevelMetricsThresholds'] == null ? null : (AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds.fromMap((map['turnLevelMetricsThresholds'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

