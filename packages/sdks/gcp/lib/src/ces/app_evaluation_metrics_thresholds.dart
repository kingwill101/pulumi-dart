// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds.dart';

class AppEvaluationMetricsThresholds {
  /// Settings for golden evaluations.
  /// Structure is documented below.
  final pulumi.Input<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds>? goldenEvaluationMetricsThresholds;

  /// Creates a new [AppEvaluationMetricsThresholds].
  /// [goldenEvaluationMetricsThresholds] Settings for golden evaluations.
  AppEvaluationMetricsThresholds({
    this.goldenEvaluationMetricsThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldenEvaluationMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds, Map<String, dynamic>>(goldenEvaluationMetricsThresholds, (value) => value.toMap()),
    };
  }

  factory AppEvaluationMetricsThresholds.fromMap(Map<String, dynamic> map) {
    return AppEvaluationMetricsThresholds(
      goldenEvaluationMetricsThresholds: (() { final guardedValue = map['goldenEvaluationMetricsThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

