// ignore_for_file: unused_element, unnecessary_cast


class ScheduledQueryRulesLogCriteriaDimension {
  /// Name of the dimension.
  final String name;
  /// Operator for dimension values, - 'Include'. Defaults to `Include`.
  final String? operator;
  /// List of dimension values.
  final List<String> values;

  /// Creates a new [ScheduledQueryRulesLogCriteriaDimension].
  /// [name] Name of the dimension.
  /// [operator] Operator for dimension values, - 'Include'. Defaults to `Include`.
  /// [values] List of dimension values.
  ScheduledQueryRulesLogCriteriaDimension({
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
      name: map['name'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

