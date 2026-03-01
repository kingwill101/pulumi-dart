// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_property_array_changed_values_condition.dart';

/// Describes an automation rule condition that evaluates an array property's value change
class PropertyArrayChangedConditionProperties {
  final AutomationRulePropertyArrayChangedValuesCondition? conditionProperties;
  /// Expected value is 'PropertyArrayChanged'.
  final String conditionType;

  /// Creates a new [PropertyArrayChangedConditionProperties].
  /// [conditionProperties] Optional.
  /// [conditionType] Expected value is 'PropertyArrayChanged'.
  PropertyArrayChangedConditionProperties({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?conditionProperties == null ? null : conditionProperties!.toMap(),
      'conditionType': conditionType,
    };
  }

  factory PropertyArrayChangedConditionProperties.fromMap(Map<String, dynamic> map) {
    return PropertyArrayChangedConditionProperties(
      conditionProperties: map['conditionProperties'] == null ? null : AutomationRulePropertyArrayChangedValuesCondition.fromMap((map['conditionProperties'] as Map).cast<String, dynamic>()),
      conditionType: map['conditionType'] as String,
    );
  }
}

