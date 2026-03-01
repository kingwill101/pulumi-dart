// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_property_array_values_condition_response.dart';

/// Describes an automation rule condition that evaluates an array property's value
class PropertyArrayConditionPropertiesResponse {
  /// Describes an automation rule condition on array properties.
  final AutomationRulePropertyArrayValuesConditionResponse? conditionProperties;
  /// Expected value is 'PropertyArray'.
  final String conditionType;

  /// Creates a new [PropertyArrayConditionPropertiesResponse].
  /// [conditionProperties] Describes an automation rule condition on array properties.
  /// [conditionType] Expected value is 'PropertyArray'.
  PropertyArrayConditionPropertiesResponse({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?conditionProperties == null ? null : conditionProperties!.toMap(),
      'conditionType': conditionType,
    };
  }

  factory PropertyArrayConditionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PropertyArrayConditionPropertiesResponse(
      conditionProperties: map['conditionProperties'] == null ? null : AutomationRulePropertyArrayValuesConditionResponse.fromMap((map['conditionProperties'] as Map).cast<String, dynamic>()),
      conditionType: map['conditionType'] as String,
    );
  }
}

