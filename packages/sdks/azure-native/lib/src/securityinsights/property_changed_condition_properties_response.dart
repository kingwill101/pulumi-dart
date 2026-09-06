// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_property_values_changed_condition_response.dart';

/// Describes an automation rule condition that evaluates a property's value change
class PropertyChangedConditionPropertiesResponse {
  final pulumi.Input<AutomationRulePropertyValuesChangedConditionResponse?>? conditionProperties;
  /// Expected value is 'PropertyChanged'.
  final pulumi.Input<String> conditionType;

  /// Creates a new [PropertyChangedConditionPropertiesResponse].
  /// [conditionProperties] Optional.
  /// [conditionType] Expected value is 'PropertyChanged'.
  const PropertyChangedConditionPropertiesResponse({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?pulumi.Input.mapOptionalInputValue<AutomationRulePropertyValuesChangedConditionResponse, Map<String, dynamic>>(conditionProperties, (value) => value.toMap()),
      'conditionType': conditionType,
    };
  }

  factory PropertyChangedConditionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PropertyChangedConditionPropertiesResponse(
      conditionProperties: (() { final guardedValue = map['conditionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRulePropertyValuesChangedConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditionType: pulumi.Input.fromValue(map['conditionType'] as String),
    );
  }
}
