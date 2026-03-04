// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricAlertDynamicCriteriaDimension {
  /// One of the dimension names.
  final pulumi.Input<String> name;

  /// The dimension operator. Possible values are `Include`, `Exclude` and `StartsWith`.
  final pulumi.Input<String> operator;

  /// The list of dimension values.
  final pulumi.Input<List<String>> values;

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

  factory MetricAlertDynamicCriteriaDimension.fromMap(
    Map<String, dynamic> map,
  ) {
    return MetricAlertDynamicCriteriaDimension(
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
