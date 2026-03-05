// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MetricTarget defines the target value, average value, or average utilization of a specific metric
class MetricTarget {
  /// averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
  final pulumi.Input<int>? averageUtilization;
  /// averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  final pulumi.Input<String>? averageValue;
  /// type represents whether the metric type is Utilization, Value, or AverageValue
  final pulumi.Input<String> type;
  /// value is the target value of the metric (as a quantity).
  final pulumi.Input<String>? value;

  /// Creates a new [MetricTarget].
  /// [averageUtilization] averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
  /// [averageValue] averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  /// [type] type represents whether the metric type is Utilization, Value, or AverageValue
  /// [value] value is the target value of the metric (as a quantity).
  MetricTarget({
    this.averageUtilization,
    this.averageValue,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'averageUtilization': ?averageUtilization,
      'averageValue': ?averageValue,
      'type': type,
      'value': ?value,
    };
  }

  factory MetricTarget.fromMap(Map<String, dynamic> map) {
    return MetricTarget(
      averageUtilization: (() { final guardedValue = map['averageUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      averageValue: (() { final guardedValue = map['averageValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

