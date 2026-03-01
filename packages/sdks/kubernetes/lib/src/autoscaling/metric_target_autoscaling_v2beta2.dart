// ignore_for_file: unused_element, unnecessary_cast


/// MetricTarget defines the target value, average value, or average utilization of a specific metric
class MetricTargetAutoscalingV2beta2 {
  /// averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
  final int? averageUtilization;
  /// averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  final String? averageValue;
  /// type represents whether the metric type is Utilization, Value, or AverageValue
  final String type;
  /// value is the target value of the metric (as a quantity).
  final String? value;

  /// Creates a new [MetricTargetAutoscalingV2beta2].
  /// [averageUtilization] averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
  /// [averageValue] averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  /// [type] type represents whether the metric type is Utilization, Value, or AverageValue
  /// [value] value is the target value of the metric (as a quantity).
  MetricTargetAutoscalingV2beta2({
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

  factory MetricTargetAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return MetricTargetAutoscalingV2beta2(
      averageUtilization: map['averageUtilization'] == null ? null : map['averageUtilization'] as int,
      averageValue: map['averageValue'] == null ? null : map['averageValue'] as String,
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

