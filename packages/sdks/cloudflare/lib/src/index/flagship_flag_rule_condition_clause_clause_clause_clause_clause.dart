// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlagshipFlagRuleConditionClauseClauseClauseClauseClause {
  final pulumi.Input<String?>? attribute;
  final pulumi.Input<List<String>?>? clauses;
  /// Available values: "AND", "OR".
  final pulumi.Input<String?>? logicalOperator;
  /// Available values: "equals", "not*equals", "greater*than", "less*than", "greater*than*or*equals", "less*than*or*equals", "contains", "starts*with", "ends*with", "in", "not*in".
  final pulumi.Input<String?>? operator;
  /// Value to compare against the context attribute. Must be an array for `in` and `notIn`; numeric and ISO-8601 datetime strings are accepted by the ordering operators.
  final pulumi.Input<String?>? value;

  /// Creates a new [FlagshipFlagRuleConditionClauseClauseClauseClauseClause].
  /// [attribute] Optional.
  /// [clauses] Optional.
  /// [logicalOperator] Available values: "AND", "OR".
  /// [operator] Available values: "equals", "not*equals", "greater*than", "less*than", "greater*than*or*equals", "less*than*or*equals", "contains", "starts*with", "ends*with", "in", "not*in".
  /// [value] Value to compare against the context attribute. Must be an array for `in` and `notIn`; numeric and ISO-8601 datetime strings are accepted by the ordering operators.
  const FlagshipFlagRuleConditionClauseClauseClauseClauseClause({
    this.attribute,
    this.clauses,
    this.logicalOperator,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
      'clauses': ?clauses,
      'logicalOperator': ?logicalOperator,
      'operator': ?operator,
      'value': ?value,
    };
  }

  factory FlagshipFlagRuleConditionClauseClauseClauseClauseClause.fromMap(Map<String, dynamic> map) {
    return FlagshipFlagRuleConditionClauseClauseClauseClauseClause(
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clauses: (() { final guardedValue = map['clauses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logicalOperator: (() { final guardedValue = map['logicalOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
