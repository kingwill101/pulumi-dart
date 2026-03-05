// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_property_values_condition.dart';

/// Describes an automation rule condition that evaluates a property's value
class PropertyConditionProperties {
  final pulumi.Input<AutomationRulePropertyValuesCondition>? conditionProperties;
  /// Expected value is 'Property'.
  final pulumi.Input<String> conditionType;

  /// Creates a new [PropertyConditionProperties].
  /// [conditionProperties] Optional.
  /// [conditionType] Expected value is 'Property'.
  PropertyConditionProperties({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?pulumi.Input.mapOptionalInputValue<AutomationRulePropertyValuesCondition, Map<String, dynamic>>(conditionProperties, (value) => value.toMap()),
      'conditionType': conditionType,
    };
  }

  factory PropertyConditionProperties.fromMap(Map<String, dynamic> map) {
    return PropertyConditionProperties(
      conditionProperties: (() { final guardedValue = map['conditionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRulePropertyValuesCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditionType: pulumi.Input.fromValue(map['conditionType'] as String),
    );
  }
}

