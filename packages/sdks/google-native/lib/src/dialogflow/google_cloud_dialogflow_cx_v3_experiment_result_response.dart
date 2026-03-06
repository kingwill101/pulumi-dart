// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_experiment_result_version_metrics_response.dart';

/// The inference result which includes an objective metric to optimize and the confidence interval.
class GoogleCloudDialogflowCxV3ExperimentResultResponse {
  /// The last time the experiment's stats data was updated. Will have default value if stats have never been computed for this experiment.
  final pulumi.Input<String> lastUpdateTime;
  /// Version variants and metrics.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse>> versionMetrics;

  /// Creates a new [GoogleCloudDialogflowCxV3ExperimentResultResponse].
  /// [lastUpdateTime] The last time the experiment's stats data was updated. Will have default value if stats have never been computed for this experiment.
  /// [versionMetrics] Version variants and metrics.
  const GoogleCloudDialogflowCxV3ExperimentResultResponse({
    required this.lastUpdateTime,
    required this.versionMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdateTime': lastUpdateTime,
      'versionMetrics': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse>, List<Map<String, dynamic>>>(versionMetrics, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3ExperimentResultResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentResultResponse(
      lastUpdateTime: pulumi.Input.fromValue(map['lastUpdateTime'] as String),
      versionMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse>(map['versionMetrics']!, (value) => GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

