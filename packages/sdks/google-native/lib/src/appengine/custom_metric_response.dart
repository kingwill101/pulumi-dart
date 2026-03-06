// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Allows autoscaling based on Stackdriver metrics.
class CustomMetricResponse {
  /// Allows filtering on the metric's fields.
  final pulumi.Input<String> filter;
  /// The name of the metric.
  final pulumi.Input<String> metricName;
  /// May be used instead of target_utilization when an instance can handle a specific amount of work/resources and the metric value is equal to the current amount of work remaining. The autoscaler will try to keep the number of instances equal to the metric value divided by single_instance_assignment.
  final pulumi.Input<double> singleInstanceAssignment;
  /// The type of the metric. Must be a string representing a Stackdriver metric type e.g. GAGUE, DELTA_PER_SECOND, etc.
  final pulumi.Input<String> targetType;
  /// The target value for the metric.
  final pulumi.Input<double> targetUtilization;

  /// Creates a new [CustomMetricResponse].
  /// [filter] Allows filtering on the metric's fields.
  /// [metricName] The name of the metric.
  /// [singleInstanceAssignment] May be used instead of target_utilization when an instance can handle a specific amount of work/resources and the metric value is equal to the current amount of work remaining. The autoscaler will try to keep the number of instances equal to the metric value divided by single_instance_assignment.
  /// [targetType] The type of the metric. Must be a string representing a Stackdriver metric type e.g. GAGUE, DELTA_PER_SECOND, etc.
  /// [targetUtilization] The target value for the metric.
  const CustomMetricResponse({
    required this.filter,
    required this.metricName,
    required this.singleInstanceAssignment,
    required this.targetType,
    required this.targetUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'metricName': metricName,
      'singleInstanceAssignment': singleInstanceAssignment,
      'targetType': targetType,
      'targetUtilization': targetUtilization,
    };
  }

  factory CustomMetricResponse.fromMap(Map<String, dynamic> map) {
    return CustomMetricResponse(
      filter: pulumi.Input.fromValue(map['filter'] as String),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      singleInstanceAssignment: pulumi.Input.fromValue(map['singleInstanceAssignment'] as double),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
      targetUtilization: pulumi.Input.fromValue(map['targetUtilization'] as double),
    );
  }
}

