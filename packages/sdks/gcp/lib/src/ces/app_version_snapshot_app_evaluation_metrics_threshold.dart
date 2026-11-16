// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_evaluation_metrics_threshold_golden_evaluation_metrics_threshold.dart';

class AppVersionSnapshotAppEvaluationMetricsThreshold {
  /// (Output)
  /// Settings for golden evaluations.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold>?>? goldenEvaluationMetricsThresholds;
  /// (Output)
  /// The hallucination metric behavior for golden evaluations.
  /// Possible values:
  /// DISABLED
  /// ENABLED
  final pulumi.Input<String?>? goldenHallucinationMetricBehavior;
  /// (Output)
  /// The hallucination metric behavior for scenario evaluations.
  /// Possible values:
  /// DISABLED
  /// ENABLED
  final pulumi.Input<String?>? scenarioHallucinationMetricBehavior;

  /// Creates a new [AppVersionSnapshotAppEvaluationMetricsThreshold].
  /// [goldenEvaluationMetricsThresholds] (Output)
  /// [goldenHallucinationMetricBehavior] (Output)
  /// [scenarioHallucinationMetricBehavior] (Output)
  const AppVersionSnapshotAppEvaluationMetricsThreshold({
    this.goldenEvaluationMetricsThresholds,
    this.goldenHallucinationMetricBehavior,
    this.scenarioHallucinationMetricBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldenEvaluationMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold>, List<Map<String, dynamic>>>(goldenEvaluationMetricsThresholds, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
      'goldenHallucinationMetricBehavior': ?goldenHallucinationMetricBehavior,
      'scenarioHallucinationMetricBehavior': ?scenarioHallucinationMetricBehavior,
    };
  }

  factory AppVersionSnapshotAppEvaluationMetricsThreshold.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppEvaluationMetricsThreshold(
      goldenEvaluationMetricsThresholds: (() { final guardedValue = map['goldenEvaluationMetricsThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold>(guardedValue, (value) => AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold.fromMap((value as Map).cast<String, dynamic>()))); })(),
      goldenHallucinationMetricBehavior: (() { final guardedValue = map['goldenHallucinationMetricBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scenarioHallucinationMetricBehavior: (() { final guardedValue = map['scenarioHallucinationMetricBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
