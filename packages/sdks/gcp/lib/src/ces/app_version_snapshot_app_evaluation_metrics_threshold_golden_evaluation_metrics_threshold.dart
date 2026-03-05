// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_evaluation_metrics_threshold_golden_evaluation_metrics_threshold_expectation_level_metrics_threshold.dart';
import 'app_version_snapshot_app_evaluation_metrics_threshold_golden_evaluation_metrics_threshold_turn_level_metrics_threshold.dart';

class AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold {
  /// (Output)
  /// Expectation level metrics thresholds.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold>>? expectationLevelMetricsThresholds;
  /// (Output)
  /// Turn level metrics thresholds.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdTurnLevelMetricsThreshold>>? turnLevelMetricsThresholds;

  /// Creates a new [AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold].
  /// [expectationLevelMetricsThresholds] (Output)
  /// [turnLevelMetricsThresholds] (Output)
  AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold({
    this.expectationLevelMetricsThresholds,
    this.turnLevelMetricsThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expectationLevelMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold>, List<Map<String, dynamic>>>(expectationLevelMetricsThresholds, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
      'turnLevelMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdTurnLevelMetricsThreshold>, List<Map<String, dynamic>>>(turnLevelMetricsThresholds, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdTurnLevelMetricsThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold(
      expectationLevelMetricsThresholds: (() { final guardedValue = map['expectationLevelMetricsThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold>(guardedValue, (value) => AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold.fromMap((value as Map).cast<String, dynamic>()))); })(),
      turnLevelMetricsThresholds: (() { final guardedValue = map['turnLevelMetricsThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdTurnLevelMetricsThreshold>(guardedValue, (value) => AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdTurnLevelMetricsThreshold.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

