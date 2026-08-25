// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_evaluation_metrics_threshold_golden_evaluation_metrics_threshold.dart';

class AppVersionSnapshotAppEvaluationMetricsThreshold {
  /// (Output)
  /// Settings for golden evaluations.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold>?>? goldenEvaluationMetricsThresholds;

  /// Creates a new [AppVersionSnapshotAppEvaluationMetricsThreshold].
  /// [goldenEvaluationMetricsThresholds] (Output)
  const AppVersionSnapshotAppEvaluationMetricsThreshold({
    this.goldenEvaluationMetricsThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldenEvaluationMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold>, List<Map<String, dynamic>>>(goldenEvaluationMetricsThresholds, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotAppEvaluationMetricsThreshold.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppEvaluationMetricsThreshold(
      goldenEvaluationMetricsThresholds: (() { final guardedValue = map['goldenEvaluationMetricsThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold>(guardedValue, (value) => AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
