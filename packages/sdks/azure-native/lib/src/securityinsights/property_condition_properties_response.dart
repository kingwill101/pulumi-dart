// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_property_values_condition_response.dart';

/// Describes an automation rule condition that evaluates a property's value
class PropertyConditionPropertiesResponse {
  final AutomationRulePropertyValuesConditionResponse? conditionProperties;
  /// Expected value is 'Property'.
  final String conditionType;

  /// Creates a new [PropertyConditionPropertiesResponse].
  /// [conditionProperties] Optional.
  /// [conditionType] Expected value is 'Property'.
  PropertyConditionPropertiesResponse({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?conditionProperties == null ? null : conditionProperties!.toMap(),
      'conditionType': conditionType,
    };
  }

  factory PropertyConditionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PropertyConditionPropertiesResponse(
      conditionProperties: map['conditionProperties'] == null ? null : AutomationRulePropertyValuesConditionResponse.fromMap((map['conditionProperties'] as Map).cast<String, dynamic>()),
      conditionType: map['conditionType'] as String,
    );
  }
}

