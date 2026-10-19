// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds_expectation_level_metrics_thresholds.dart';
import 'app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds_tool_matching_settings.dart';
import 'app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds_turn_level_metrics_thresholds.dart';

class AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds {
  /// Expectation level metrics thresholds.
  /// Structure is documented below.
  final pulumi.Input<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds?>? expectationLevelMetricsThresholds;
  /// The tool matching settings. An extra tool call is a tool call that is
  /// present in the execution but does not match any tool call in the golden
  /// expectation.
  /// Structure is documented below.
  final pulumi.Input<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettings?>? toolMatchingSettings;
  /// Turn level metrics thresholds.
  /// Structure is documented below.
  final pulumi.Input<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds?>? turnLevelMetricsThresholds;

  /// Creates a new [AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds].
  /// [expectationLevelMetricsThresholds] Expectation level metrics thresholds.
  /// [toolMatchingSettings] The tool matching settings. An extra tool call is a tool call that is
  /// [turnLevelMetricsThresholds] Turn level metrics thresholds.
  const AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds({
    this.expectationLevelMetricsThresholds,
    this.toolMatchingSettings,
    this.turnLevelMetricsThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expectationLevelMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds, Map<String, dynamic>>(expectationLevelMetricsThresholds, (value) => value.toMap()),
      'toolMatchingSettings': ?pulumi.Input.mapOptionalInputValue<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettings, Map<String, dynamic>>(toolMatchingSettings, (value) => value.toMap()),
      'turnLevelMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds, Map<String, dynamic>>(turnLevelMetricsThresholds, (value) => value.toMap()),
    };
  }

  factory AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds.fromMap(Map<String, dynamic> map) {
    return AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds(
      expectationLevelMetricsThresholds: (() { final guardedValue = map['expectationLevelMetricsThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolMatchingSettings: (() { final guardedValue = map['toolMatchingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      turnLevelMetricsThresholds: (() { final guardedValue = map['turnLevelMetricsThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
