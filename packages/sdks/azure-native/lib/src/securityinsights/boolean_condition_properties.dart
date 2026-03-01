// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_boolean_condition.dart';

/// Describes an automation rule condition that applies a boolean operator (e.g AND, OR) to conditions
class BooleanConditionProperties {
  /// Describes an automation rule condition with boolean operators.
  final AutomationRuleBooleanCondition? conditionProperties;
  /// Expected value is 'Boolean'.
  final String conditionType;

  /// Creates a new [BooleanConditionProperties].
  /// [conditionProperties] Describes an automation rule condition with boolean operators.
  /// [conditionType] Expected value is 'Boolean'.
  BooleanConditionProperties({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?conditionProperties == null ? null : conditionProperties!.toMap(),
      'conditionType': conditionType,
    };
  }

  factory BooleanConditionProperties.fromMap(Map<String, dynamic> map) {
    return BooleanConditionProperties(
      conditionProperties: map['conditionProperties'] == null ? null : AutomationRuleBooleanCondition.fromMap((map['conditionProperties'] as Map).cast<String, dynamic>()),
      conditionType: map['conditionType'] as String,
    );
  }
}

