// ignore_for_file: unused_element, unnecessary_cast


class MetricAlertDynamicCriteriaDimension {
  /// One of the dimension names.
  final String name;
  /// The dimension operator. Possible values are `Include`, `Exclude` and `StartsWith`.
  final String operator;
  /// The list of dimension values.
  final List<String> values;

  /// Creates a new [MetricAlertDynamicCriteriaDimension].
  /// [name] One of the dimension names.
  /// [operator] The dimension operator. Possible values are `Include`, `Exclude` and `StartsWith`.
  /// [values] The list of dimension values.
  MetricAlertDynamicCriteriaDimension({
    required this.name,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': operator,
      'values': values,
    };
  }

  factory MetricAlertDynamicCriteriaDimension.fromMap(Map<String, dynamic> map) {
    return MetricAlertDynamicCriteriaDimension(
      name: map['name'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

