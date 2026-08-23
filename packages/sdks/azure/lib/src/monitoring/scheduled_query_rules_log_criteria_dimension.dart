// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRulesLogCriteriaDimension {
  /// Name of the dimension.
  final pulumi.Input<String> name;
  /// Operator for dimension values, - 'Include'. Defaults to `Include`.
  final pulumi.Input<String>? operator;
  /// List of dimension values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ScheduledQueryRulesLogCriteriaDimension].
  /// [name] Name of the dimension.
  /// [operator] Operator for dimension values, - 'Include'. Defaults to `Include`.
  /// [values] List of dimension values.
  const ScheduledQueryRulesLogCriteriaDimension({
    required this.name,
    this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': ?operator,
      'values': values,
    };
  }

  factory ScheduledQueryRulesLogCriteriaDimension.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesLogCriteriaDimension(
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
