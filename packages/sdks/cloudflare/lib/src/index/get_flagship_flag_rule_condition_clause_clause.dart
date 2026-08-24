// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flagship_flag_rule_condition_clause_clause_clause.dart';

class GetFlagshipFlagRuleConditionClauseClause {
  final pulumi.Input<String> attribute;
  final pulumi.Input<List<GetFlagshipFlagRuleConditionClauseClauseClause>> clauses;
  /// Available values: "AND", "OR".
  final pulumi.Input<String> logicalOperator;
  /// Available values: "equals", "not*equals", "greater*than", "less*than", "greater*than*or*equals", "less*than*or*equals", "contains", "starts*with", "ends*with", "in", "not*in".
  final pulumi.Input<String> operator;
  /// Value to compare against the context attribute. Must be an array for `in` and `notIn`; numeric and ISO-8601 datetime strings are accepted by the ordering operators.
  final pulumi.Input<String> value;

  /// Creates a new [GetFlagshipFlagRuleConditionClauseClause].
  /// [attribute] Required.
  /// [clauses] Required.
  /// [logicalOperator] Available values: "AND", "OR".
  /// [operator] Available values: "equals", "not*equals", "greater*than", "less*than", "greater*than*or*equals", "less*than*or*equals", "contains", "starts*with", "ends*with", "in", "not*in".
  /// [value] Value to compare against the context attribute. Must be an array for `in` and `notIn`; numeric and ISO-8601 datetime strings are accepted by the ordering operators.
  const GetFlagshipFlagRuleConditionClauseClause({
    required this.attribute,
    required this.clauses,
    required this.logicalOperator,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
      'clauses': pulumi.Input.mapInputValue<List<GetFlagshipFlagRuleConditionClauseClauseClause>, List<Map<String, dynamic>>>(clauses, (value) => pulumi.Input.encodeList<GetFlagshipFlagRuleConditionClauseClauseClause, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logicalOperator': logicalOperator,
      'operator': operator,
      'value': value,
    };
  }

  factory GetFlagshipFlagRuleConditionClauseClause.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagRuleConditionClauseClause(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
      clauses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFlagshipFlagRuleConditionClauseClauseClause>(map['clauses']!, (value) => GetFlagshipFlagRuleConditionClauseClauseClause.fromMap((value as Map).cast<String, dynamic>()))),
      logicalOperator: pulumi.Input.fromValue(map['logicalOperator'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
