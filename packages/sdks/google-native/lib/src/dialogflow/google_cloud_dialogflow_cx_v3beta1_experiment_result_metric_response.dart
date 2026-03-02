// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_confidence_interval_response.dart';

/// Metric and corresponding confidence intervals.
class GoogleCloudDialogflowCxV3beta1ExperimentResultMetricResponse {
  /// The probability that the treatment is better than all other treatments in the experiment
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceIntervalResponse> confidenceInterval;
  /// Count value of a metric.
  final pulumi.Input<double> count;
  /// Count-based metric type. Only one of type or count_type is specified in each Metric.
  final pulumi.Input<String> countType;
  /// Ratio value of a metric.
  final pulumi.Input<double> ratio;
  /// Ratio-based metric type. Only one of type or count_type is specified in each Metric.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ExperimentResultMetricResponse].
  /// [confidenceInterval] The probability that the treatment is better than all other treatments in the experiment
  /// [count] Count value of a metric.
  /// [countType] Count-based metric type. Only one of type or count_type is specified in each Metric.
  /// [ratio] Ratio value of a metric.
  /// [type] Ratio-based metric type. Only one of type or count_type is specified in each Metric.
  GoogleCloudDialogflowCxV3beta1ExperimentResultMetricResponse({
    required this.confidenceInterval,
    required this.count,
    required this.countType,
    required this.ratio,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceInterval': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceIntervalResponse, Map<String, dynamic>>(confidenceInterval, (value) => value.toMap()),
      'count': count,
      'countType': countType,
      'ratio': ratio,
      'type': type,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ExperimentResultMetricResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ExperimentResultMetricResponse(
      confidenceInterval: (GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceIntervalResponse.fromMap((map['confidenceInterval'] as Map).cast<String, dynamic>())).input(),
      count: (map['count'] as double).input(),
      countType: (map['countType'] as String).input(),
      ratio: (map['ratio'] as double).input(),
      type: (map['type'] as String).input(),
    );
  }
}

