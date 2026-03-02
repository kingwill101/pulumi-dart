// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MetricValueStatus holds the current value for a metric
class MetricValueStatusAutoscalingV2beta2 {
  /// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  final pulumi.Input<int>? averageUtilization;
  /// averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  final pulumi.Input<String>? averageValue;
  /// value is the current value of the metric (as a quantity).
  final pulumi.Input<String>? value;

  /// Creates a new [MetricValueStatusAutoscalingV2beta2].
  /// [averageUtilization] currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  /// [averageValue] averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  /// [value] value is the current value of the metric (as a quantity).
  MetricValueStatusAutoscalingV2beta2({
    this.averageUtilization,
    this.averageValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'averageUtilization': ?averageUtilization,
      'averageValue': ?averageValue,
      'value': ?value,
    };
  }

  factory MetricValueStatusAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return MetricValueStatusAutoscalingV2beta2(
      averageUtilization: map['averageUtilization'] == null ? null : (map['averageUtilization']! as int).input(),
      averageValue: map['averageValue'] == null ? null : (map['averageValue']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

