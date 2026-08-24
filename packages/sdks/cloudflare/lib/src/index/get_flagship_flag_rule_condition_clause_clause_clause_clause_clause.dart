// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFlagshipFlagRuleConditionClauseClauseClauseClauseClause {
  final pulumi.Input<String> attribute;
  final pulumi.Input<List<String>> clauses;
  /// Available values: "AND", "OR".
  final pulumi.Input<String> logicalOperator;
  /// Available values: "equals", "not*equals", "greater*than", "less*than", "greater*than*or*equals", "less*than*or*equals", "contains", "starts*with", "ends*with", "in", "not*in".
  final pulumi.Input<String> operator;
  /// Value to compare against the context attribute. Must be an array for `in` and `notIn`; numeric and ISO-8601 datetime strings are accepted by the ordering operators.
  final pulumi.Input<String> value;

  /// Creates a new [GetFlagshipFlagRuleConditionClauseClauseClauseClauseClause].
  /// [attribute] Required.
  /// [clauses] Required.
  /// [logicalOperator] Available values: "AND", "OR".
  /// [operator] Available values: "equals", "not*equals", "greater*than", "less*than", "greater*than*or*equals", "less*than*or*equals", "contains", "starts*with", "ends*with", "in", "not*in".
  /// [value] Value to compare against the context attribute. Must be an array for `in` and `notIn`; numeric and ISO-8601 datetime strings are accepted by the ordering operators.
  const GetFlagshipFlagRuleConditionClauseClauseClauseClauseClause({
    required this.attribute,
    required this.clauses,
    required this.logicalOperator,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
      'clauses': clauses,
      'logicalOperator': logicalOperator,
      'operator': operator,
      'value': value,
    };
  }

  factory GetFlagshipFlagRuleConditionClauseClauseClauseClauseClause.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagRuleConditionClauseClauseClauseClauseClause(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
      clauses: pulumi.Input.fromValue((map['clauses'] as List).cast<String>()),
      logicalOperator: pulumi.Input.fromValue(map['logicalOperator'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
