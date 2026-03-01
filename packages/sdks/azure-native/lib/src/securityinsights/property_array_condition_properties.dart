// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_property_array_values_condition.dart';

/// Describes an automation rule condition that evaluates an array property's value
class PropertyArrayConditionProperties {
  /// Describes an automation rule condition on array properties.
  final AutomationRulePropertyArrayValuesCondition? conditionProperties;
  /// Expected value is 'PropertyArray'.
  final String conditionType;

  /// Creates a new [PropertyArrayConditionProperties].
  /// [conditionProperties] Describes an automation rule condition on array properties.
  /// [conditionType] Expected value is 'PropertyArray'.
  PropertyArrayConditionProperties({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?conditionProperties == null ? null : conditionProperties!.toMap(),
      'conditionType': conditionType,
    };
  }

  factory PropertyArrayConditionProperties.fromMap(Map<String, dynamic> map) {
    return PropertyArrayConditionProperties(
      conditionProperties: map['conditionProperties'] == null ? null : AutomationRulePropertyArrayValuesCondition.fromMap((map['conditionProperties'] as Map).cast<String, dynamic>()),
      conditionType: map['conditionType'] as String,
    );
  }
}

