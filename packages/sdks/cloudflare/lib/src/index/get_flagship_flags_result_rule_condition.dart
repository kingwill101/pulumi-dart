// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flagship_flags_result_rule_condition_clause.dart';

class GetFlagshipFlagsResultRuleCondition {
  final pulumi.Input<String> attribute;
  final pulumi.Input<List<GetFlagshipFlagsResultRuleConditionClause>> clauses;
  /// Available values: "AND", "OR".
  final pulumi.Input<String> logicalOperator;
  /// Available values: "equals", "not*equals", "greater*than", "less*than", "greater*than*or*equals", "less*than*or*equals", "contains", "starts*with", "ends*with", "in", "not*in".
  final pulumi.Input<String> operator;
  /// Value to compare against the context attribute. Must be an array for `in` and `notIn`; numeric and ISO-8601 datetime strings are accepted by the ordering operators.
  final pulumi.Input<String> value;

  /// Creates a new [GetFlagshipFlagsResultRuleCondition].
  /// [attribute] Required.
  /// [clauses] Required.
  /// [logicalOperator] Available values: "AND", "OR".
  /// [operator] Available values: "equals", "not*equals", "greater*than", "less*than", "greater*than*or*equals", "less*than*or*equals", "contains", "starts*with", "ends*with", "in", "not*in".
  /// [value] Value to compare against the context attribute. Must be an array for `in` and `notIn`; numeric and ISO-8601 datetime strings are accepted by the ordering operators.
  const GetFlagshipFlagsResultRuleCondition({
    required this.attribute,
    required this.clauses,
    required this.logicalOperator,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
      'clauses': pulumi.Input.mapInputValue<List<GetFlagshipFlagsResultRuleConditionClause>, List<Map<String, dynamic>>>(clauses, (value) => pulumi.Input.encodeList<GetFlagshipFlagsResultRuleConditionClause, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logicalOperator': logicalOperator,
      'operator': operator,
      'value': value,
    };
  }

  factory GetFlagshipFlagsResultRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagsResultRuleCondition(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
      clauses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFlagshipFlagsResultRuleConditionClause>(map['clauses']!, (value) => GetFlagshipFlagsResultRuleConditionClause.fromMap((value as Map).cast<String, dynamic>()))),
      logicalOperator: pulumi.Input.fromValue(map['logicalOperator'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
