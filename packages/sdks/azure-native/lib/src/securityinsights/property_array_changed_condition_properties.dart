// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_property_array_changed_values_condition.dart';

/// Describes an automation rule condition that evaluates an array property's value change
class PropertyArrayChangedConditionProperties {
  final pulumi.Input<AutomationRulePropertyArrayChangedValuesCondition>? conditionProperties;
  /// Expected value is 'PropertyArrayChanged'.
  final pulumi.Input<String> conditionType;

  /// Creates a new [PropertyArrayChangedConditionProperties].
  /// [conditionProperties] Optional.
  /// [conditionType] Expected value is 'PropertyArrayChanged'.
  const PropertyArrayChangedConditionProperties({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?pulumi.Input.mapOptionalInputValue<AutomationRulePropertyArrayChangedValuesCondition, Map<String, dynamic>>(conditionProperties, (value) => value.toMap()),
      'conditionType': conditionType,
    };
  }

  factory PropertyArrayChangedConditionProperties.fromMap(Map<String, dynamic> map) {
    return PropertyArrayChangedConditionProperties(
      conditionProperties: (() { final guardedValue = map['conditionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRulePropertyArrayChangedValuesCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditionType: pulumi.Input.fromValue(map['conditionType'] as String),
    );
  }
}

