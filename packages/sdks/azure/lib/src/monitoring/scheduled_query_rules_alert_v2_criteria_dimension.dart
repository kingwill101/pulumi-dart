// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRulesAlertV2CriteriaDimension {
  /// Name of the dimension.
  final pulumi.Input<String> name;
  /// Operator for dimension values. Possible values are `Exclude`,and `Include`.
  final pulumi.Input<String> operator;
  /// List of dimension values. Use a wildcard `*` to collect all.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ScheduledQueryRulesAlertV2CriteriaDimension].
  /// [name] Name of the dimension.
  /// [operator] Operator for dimension values. Possible values are `Exclude`,and `Include`.
  /// [values] List of dimension values. Use a wildcard `*` to collect all.
  const ScheduledQueryRulesAlertV2CriteriaDimension({
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

  factory ScheduledQueryRulesAlertV2CriteriaDimension.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertV2CriteriaDimension(
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

