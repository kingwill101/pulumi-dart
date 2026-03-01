// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_property_values_condition.dart';

/// Describes an automation rule condition that evaluates a property's value
class PropertyConditionProperties {
  final AutomationRulePropertyValuesCondition? conditionProperties;
  /// Expected value is 'Property'.
  final String conditionType;

  /// Creates a new [PropertyConditionProperties].
  /// [conditionProperties] Optional.
  /// [conditionType] Expected value is 'Property'.
  PropertyConditionProperties({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?conditionProperties == null ? null : conditionProperties!.toMap(),
      'conditionType': conditionType,
    };
  }

  factory PropertyConditionProperties.fromMap(Map<String, dynamic> map) {
    return PropertyConditionProperties(
      conditionProperties: map['conditionProperties'] == null ? null : AutomationRulePropertyValuesCondition.fromMap((map['conditionProperties'] as Map).cast<String, dynamic>()),
      conditionType: map['conditionType'] as String,
    );
  }
}

