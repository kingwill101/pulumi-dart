// ignore_for_file: unused_element, unnecessary_cast


class ScheduledQueryRulesAlertV2CriteriaDimension {
  /// Name of the dimension.
  final String name;
  /// Operator for dimension values. Possible values are `Exclude`,and `Include`.
  final String operator;
  /// List of dimension values. Use a wildcard `*` to collect all.
  final List<String> values;

  /// Creates a new [ScheduledQueryRulesAlertV2CriteriaDimension].
  /// [name] Name of the dimension.
  /// [operator] Operator for dimension values. Possible values are `Exclude`,and `Include`.
  /// [values] List of dimension values. Use a wildcard `*` to collect all.
  ScheduledQueryRulesAlertV2CriteriaDimension({
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
      name: map['name'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

