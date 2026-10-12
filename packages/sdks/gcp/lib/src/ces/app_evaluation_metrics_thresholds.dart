// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds.dart';

class AppEvaluationMetricsThresholds {
  /// Settings for golden evaluations.
  /// Structure is documented below.
  final pulumi.Input<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds?>? goldenEvaluationMetricsThresholds;
  /// The hallucination metric behavior for golden evaluations.
  /// Possible values are: `DISABLED`, `ENABLED`.
  final pulumi.Input<String?>? goldenHallucinationMetricBehavior;
  /// The hallucination metric behavior for scenario evaluations.
  /// Possible values are: `DISABLED`, `ENABLED`.
  final pulumi.Input<String?>? scenarioHallucinationMetricBehavior;

  /// Creates a new [AppEvaluationMetricsThresholds].
  /// [goldenEvaluationMetricsThresholds] Settings for golden evaluations.
  /// [goldenHallucinationMetricBehavior] The hallucination metric behavior for golden evaluations.
  /// [scenarioHallucinationMetricBehavior] The hallucination metric behavior for scenario evaluations.
  const AppEvaluationMetricsThresholds({
    this.goldenEvaluationMetricsThresholds,
    this.goldenHallucinationMetricBehavior,
    this.scenarioHallucinationMetricBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldenEvaluationMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds, Map<String, dynamic>>(goldenEvaluationMetricsThresholds, (value) => value.toMap()),
      'goldenHallucinationMetricBehavior': ?goldenHallucinationMetricBehavior,
      'scenarioHallucinationMetricBehavior': ?scenarioHallucinationMetricBehavior,
    };
  }

  factory AppEvaluationMetricsThresholds.fromMap(Map<String, dynamic> map) {
    return AppEvaluationMetricsThresholds(
      goldenEvaluationMetricsThresholds: (() { final guardedValue = map['goldenEvaluationMetricsThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goldenHallucinationMetricBehavior: (() { final guardedValue = map['goldenHallucinationMetricBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scenarioHallucinationMetricBehavior: (() { final guardedValue = map['scenarioHallucinationMetricBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
