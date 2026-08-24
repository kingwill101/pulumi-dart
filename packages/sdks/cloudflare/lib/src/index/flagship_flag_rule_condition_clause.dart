// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flagship_flag_rule_condition_clause_clause.dart';

class FlagshipFlagRuleConditionClause {
  final pulumi.Input<String?>? attribute;
  final pulumi.Input<List<FlagshipFlagRuleConditionClauseClause>?>? clauses;
  /// Available values: "AND", "OR".
  final pulumi.Input<String?>? logicalOperator;
  /// Available values: "equals", "not*equals", "greater*than", "less*than", "greater*than*or*equals", "less*than*or*equals", "contains", "starts*with", "ends*with", "in", "not*in".
  final pulumi.Input<String?>? operator;
  /// Value to compare against the context attribute. Must be an array for `in` and `notIn`; numeric and ISO-8601 datetime strings are accepted by the ordering operators.
  final pulumi.Input<String?>? value;

  /// Creates a new [FlagshipFlagRuleConditionClause].
  /// [attribute] Optional.
  /// [clauses] Optional.
  /// [logicalOperator] Available values: "AND", "OR".
  /// [operator] Available values: "equals", "not*equals", "greater*than", "less*than", "greater*than*or*equals", "less*than*or*equals", "contains", "starts*with", "ends*with", "in", "not*in".
  /// [value] Value to compare against the context attribute. Must be an array for `in` and `notIn`; numeric and ISO-8601 datetime strings are accepted by the ordering operators.
  const FlagshipFlagRuleConditionClause({
    this.attribute,
    this.clauses,
    this.logicalOperator,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
      'clauses': ?pulumi.Input.mapOptionalInputValue<List<FlagshipFlagRuleConditionClauseClause>, List<Map<String, dynamic>>>(clauses, (value) => pulumi.Input.encodeList<FlagshipFlagRuleConditionClauseClause, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logicalOperator': ?logicalOperator,
      'operator': ?operator,
      'value': ?value,
    };
  }

  factory FlagshipFlagRuleConditionClause.fromMap(Map<String, dynamic> map) {
    return FlagshipFlagRuleConditionClause(
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clauses: (() { final guardedValue = map['clauses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlagshipFlagRuleConditionClauseClause>(guardedValue, (value) => FlagshipFlagRuleConditionClauseClause.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logicalOperator: (() { final guardedValue = map['logicalOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
