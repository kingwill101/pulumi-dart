// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_confidence_interval.dart';
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_metric_count_type.dart';
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_metric_type.dart';

/// Metric and corresponding confidence intervals.
class GoogleCloudDialogflowCxV3beta1ExperimentResultMetric {
  /// The probability that the treatment is better than all other treatments in the experiment
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval>? confidenceInterval;
  /// Count value of a metric.
  final pulumi.Input<double>? count;
  /// Count-based metric type. Only one of type or count_type is specified in each Metric.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ExperimentResultMetricCountType>? countType;
  /// Ratio value of a metric.
  final pulumi.Input<double>? ratio;
  /// Ratio-based metric type. Only one of type or count_type is specified in each Metric.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ExperimentResultMetricType>? type;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ExperimentResultMetric].
  /// [confidenceInterval] The probability that the treatment is better than all other treatments in the experiment
  /// [count] Count value of a metric.
  /// [countType] Count-based metric type. Only one of type or count_type is specified in each Metric.
  /// [ratio] Ratio value of a metric.
  /// [type] Ratio-based metric type. Only one of type or count_type is specified in each Metric.
  GoogleCloudDialogflowCxV3beta1ExperimentResultMetric({
    this.confidenceInterval,
    this.count,
    this.countType,
    this.ratio,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceInterval': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval, Map<String, dynamic>>(confidenceInterval, (value) => value.toMap()),
      'count': ?count,
      'countType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1ExperimentResultMetricCountType, String>(countType, (value) => value.value),
      'ratio': ?ratio,
      'type': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1ExperimentResultMetricType, String>(type, (value) => value.value),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ExperimentResultMetric.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ExperimentResultMetric(
      confidenceInterval: map['confidenceInterval'] == null ? null : (GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval.fromMap((map['confidenceInterval']! as Map).cast<String, dynamic>())).input(),
      count: map['count'] == null ? null : (map['count']! as double).input(),
      countType: map['countType'] == null ? null : (GoogleCloudDialogflowCxV3beta1ExperimentResultMetricCountType.fromValue(map['countType']! as String)).input(),
      ratio: map['ratio'] == null ? null : (map['ratio']! as double).input(),
      type: map['type'] == null ? null : (GoogleCloudDialogflowCxV3beta1ExperimentResultMetricType.fromValue(map['type']! as String)).input(),
    );
  }
}

