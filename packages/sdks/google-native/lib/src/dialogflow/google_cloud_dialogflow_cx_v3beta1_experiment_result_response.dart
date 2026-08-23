// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_version_metrics_response.dart';

/// The inference result which includes an objective metric to optimize and the confidence interval.
class GoogleCloudDialogflowCxV3beta1ExperimentResultResponse {
  /// The last time the experiment's stats data was updated. Will have default value if stats have never been computed for this experiment.
  final pulumi.Input<String> lastUpdateTime;
  /// Version variants and metrics.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse>> versionMetrics;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ExperimentResultResponse].
  /// [lastUpdateTime] The last time the experiment's stats data was updated. Will have default value if stats have never been computed for this experiment.
  /// [versionMetrics] Version variants and metrics.
  const GoogleCloudDialogflowCxV3beta1ExperimentResultResponse({
    required this.lastUpdateTime,
    required this.versionMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdateTime': lastUpdateTime,
      'versionMetrics': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse>, List<Map<String, dynamic>>>(versionMetrics, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ExperimentResultResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ExperimentResultResponse(
      lastUpdateTime: pulumi.Input.fromValue(map['lastUpdateTime'] as String),
      versionMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse>(map['versionMetrics']!, (value) => GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
