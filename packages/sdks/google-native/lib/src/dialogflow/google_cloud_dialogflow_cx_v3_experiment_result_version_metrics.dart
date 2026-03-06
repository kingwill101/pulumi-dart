// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_experiment_result_metric.dart';

/// Version variant and associated metrics.
class GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics {
  /// The metrics and corresponding confidence intervals in the inference result.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3ExperimentResultMetric>>? metrics;
  /// Number of sessions that were allocated to this version.
  final pulumi.Input<int>? sessionCount;
  /// The name of the flow Version. Format: `projects//locations//agents//flows//versions/`.
  final pulumi.Input<String>? version;

  /// Creates a new [GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics].
  /// [metrics] The metrics and corresponding confidence intervals in the inference result.
  /// [sessionCount] Number of sessions that were allocated to this version.
  /// [version] The name of the flow Version. Format: `projects//locations//agents//flows//versions/`.
  const GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics({
    this.metrics,
    this.sessionCount,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3ExperimentResultMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3ExperimentResultMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionCount': ?sessionCount,
      'version': ?version,
    };
  }

  factory GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3ExperimentResultMetric>(guardedValue, (value) => GoogleCloudDialogflowCxV3ExperimentResultMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sessionCount: (() { final guardedValue = map['sessionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

