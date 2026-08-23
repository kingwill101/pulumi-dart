// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_experiment_result_metric_response.dart';

/// Version variant and associated metrics.
class GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse {
  /// The metrics and corresponding confidence intervals in the inference result.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3ExperimentResultMetricResponse>> metrics;
  /// Number of sessions that were allocated to this version.
  final pulumi.Input<int> sessionCount;
  /// The name of the flow Version. Format: `projects//locations//agents//flows//versions/`.
  final pulumi.Input<String> version;

  /// Creates a new [GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse].
  /// [metrics] The metrics and corresponding confidence intervals in the inference result.
  /// [sessionCount] Number of sessions that were allocated to this version.
  /// [version] The name of the flow Version. Format: `projects//locations//agents//flows//versions/`.
  const GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse({
    required this.metrics,
    required this.sessionCount,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3ExperimentResultMetricResponse>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3ExperimentResultMetricResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionCount': sessionCount,
      'version': version,
    };
  }

  factory GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse(
      metrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3ExperimentResultMetricResponse>(map['metrics']!, (value) => GoogleCloudDialogflowCxV3ExperimentResultMetricResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sessionCount: pulumi.Input.fromValue(map['sessionCount'] as int),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
