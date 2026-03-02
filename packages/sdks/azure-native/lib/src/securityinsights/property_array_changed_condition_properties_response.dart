// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_property_array_changed_values_condition_response.dart';

/// Describes an automation rule condition that evaluates an array property's value change
class PropertyArrayChangedConditionPropertiesResponse {
  final pulumi.Input<AutomationRulePropertyArrayChangedValuesConditionResponse>? conditionProperties;
  /// Expected value is 'PropertyArrayChanged'.
  final pulumi.Input<String> conditionType;

  /// Creates a new [PropertyArrayChangedConditionPropertiesResponse].
  /// [conditionProperties] Optional.
  /// [conditionType] Expected value is 'PropertyArrayChanged'.
  PropertyArrayChangedConditionPropertiesResponse({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?pulumi.Input.mapOptionalInputValue<AutomationRulePropertyArrayChangedValuesConditionResponse, Map<String, dynamic>>(conditionProperties, (value) => value.toMap()),
      'conditionType': conditionType,
    };
  }

  factory PropertyArrayChangedConditionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PropertyArrayChangedConditionPropertiesResponse(
      conditionProperties: map['conditionProperties'] == null ? null : (AutomationRulePropertyArrayChangedValuesConditionResponse.fromMap((map['conditionProperties'] as Map).cast<String, dynamic>())).input(),
      conditionType: (map['conditionType'] as String).input(),
    );
  }
}

