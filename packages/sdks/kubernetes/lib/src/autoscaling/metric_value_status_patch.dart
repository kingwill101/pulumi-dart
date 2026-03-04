// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MetricValueStatus holds the current value for a metric
class MetricValueStatusPatch {
  /// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  final pulumi.Input<int>? averageUtilization;

  /// averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  final pulumi.Input<String>? averageValue;

  /// value is the current value of the metric (as a quantity).
  final pulumi.Input<String>? value;

  /// Creates a new [MetricValueStatusPatch].
  /// [averageUtilization] currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  /// [averageValue] averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  /// [value] value is the current value of the metric (as a quantity).
  MetricValueStatusPatch({
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

  factory MetricValueStatusPatch.fromMap(Map<String, dynamic> map) {
    return MetricValueStatusPatch(
      averageUtilization: (() {
        final guardedValue = map['averageUtilization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      averageValue: (() {
        final guardedValue = map['averageValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
