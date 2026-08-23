// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_property_values_condition_response.dart';

/// Describes an automation rule condition that evaluates a property's value
class PropertyConditionPropertiesResponse {
  final pulumi.Input<AutomationRulePropertyValuesConditionResponse>? conditionProperties;
  /// Expected value is 'Property'.
  final pulumi.Input<String> conditionType;

  /// Creates a new [PropertyConditionPropertiesResponse].
  /// [conditionProperties] Optional.
  /// [conditionType] Expected value is 'Property'.
  const PropertyConditionPropertiesResponse({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?pulumi.Input.mapOptionalInputValue<AutomationRulePropertyValuesConditionResponse, Map<String, dynamic>>(conditionProperties, (value) => value.toMap()),
      'conditionType': conditionType,
    };
  }

  factory PropertyConditionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PropertyConditionPropertiesResponse(
      conditionProperties: (() { final guardedValue = map['conditionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRulePropertyValuesConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditionType: pulumi.Input.fromValue(map['conditionType'] as String),
    );
  }
}
