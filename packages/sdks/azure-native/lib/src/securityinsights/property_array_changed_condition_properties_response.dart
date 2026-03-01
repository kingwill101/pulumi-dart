// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_property_array_changed_values_condition_response.dart';

/// Describes an automation rule condition that evaluates an array property's value change
class PropertyArrayChangedConditionPropertiesResponse {
  final AutomationRulePropertyArrayChangedValuesConditionResponse? conditionProperties;
  /// Expected value is 'PropertyArrayChanged'.
  final String conditionType;

  /// Creates a new [PropertyArrayChangedConditionPropertiesResponse].
  /// [conditionProperties] Optional.
  /// [conditionType] Expected value is 'PropertyArrayChanged'.
  PropertyArrayChangedConditionPropertiesResponse({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?conditionProperties == null ? null : conditionProperties!.toMap(),
      'conditionType': conditionType,
    };
  }

  factory PropertyArrayChangedConditionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PropertyArrayChangedConditionPropertiesResponse(
      conditionProperties: map['conditionProperties'] == null ? null : AutomationRulePropertyArrayChangedValuesConditionResponse.fromMap((map['conditionProperties'] as Map).cast<String, dynamic>()),
      conditionType: map['conditionType'] as String,
    );
  }
}

