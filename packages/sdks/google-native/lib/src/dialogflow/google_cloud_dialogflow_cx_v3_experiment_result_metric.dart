// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_experiment_result_confidence_interval.dart';
import 'google_cloud_dialogflow_cx_v3_experiment_result_metric_count_type.dart';
import 'google_cloud_dialogflow_cx_v3_experiment_result_metric_type.dart';

/// Metric and corresponding confidence intervals.
class GoogleCloudDialogflowCxV3ExperimentResultMetric {
  /// The probability that the treatment is better than all other treatments in the experiment
  final pulumi.Input<GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval>? confidenceInterval;
  /// Count value of a metric.
  final pulumi.Input<double>? count;
  /// Count-based metric type. Only one of type or count_type is specified in each Metric.
  final pulumi.Input<GoogleCloudDialogflowCxV3ExperimentResultMetricCountType>? countType;
  /// Ratio value of a metric.
  final pulumi.Input<double>? ratio;
  /// Ratio-based metric type. Only one of type or count_type is specified in each Metric.
  final pulumi.Input<GoogleCloudDialogflowCxV3ExperimentResultMetricType>? type;

  /// Creates a new [GoogleCloudDialogflowCxV3ExperimentResultMetric].
  /// [confidenceInterval] The probability that the treatment is better than all other treatments in the experiment
  /// [count] Count value of a metric.
  /// [countType] Count-based metric type. Only one of type or count_type is specified in each Metric.
  /// [ratio] Ratio value of a metric.
  /// [type] Ratio-based metric type. Only one of type or count_type is specified in each Metric.
  const GoogleCloudDialogflowCxV3ExperimentResultMetric({
    this.confidenceInterval,
    this.count,
    this.countType,
    this.ratio,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceInterval': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval, Map<String, dynamic>>(confidenceInterval, (value) => value.toMap()),
      'count': ?count,
      'countType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3ExperimentResultMetricCountType, String>(countType, (value) => value.wireValue),
      'ratio': ?ratio,
      'type': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3ExperimentResultMetricType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDialogflowCxV3ExperimentResultMetric.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentResultMetric(
      confidenceInterval: (() { final guardedValue = map['confidenceInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      countType: (() { final guardedValue = map['countType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3ExperimentResultMetricCountType.fromValue(guardedValue as String)); })(),
      ratio: (() { final guardedValue = map['ratio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3ExperimentResultMetricType.fromValue(guardedValue as String)); })(),
    );
  }
}
