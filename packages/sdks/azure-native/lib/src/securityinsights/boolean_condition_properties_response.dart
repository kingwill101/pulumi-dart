// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_boolean_condition_response.dart';

/// Describes an automation rule condition that applies a boolean operator (e.g AND, OR) to conditions
class BooleanConditionPropertiesResponse {
  /// Describes an automation rule condition with boolean operators.
  final pulumi.Input<AutomationRuleBooleanConditionResponse>? conditionProperties;
  /// Expected value is 'Boolean'.
  final pulumi.Input<String> conditionType;

  /// Creates a new [BooleanConditionPropertiesResponse].
  /// [conditionProperties] Describes an automation rule condition with boolean operators.
  /// [conditionType] Expected value is 'Boolean'.
  const BooleanConditionPropertiesResponse({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?pulumi.Input.mapOptionalInputValue<AutomationRuleBooleanConditionResponse, Map<String, dynamic>>(conditionProperties, (value) => value.toMap()),
      'conditionType': conditionType,
    };
  }

  factory BooleanConditionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BooleanConditionPropertiesResponse(
      conditionProperties: (() { final guardedValue = map['conditionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleBooleanConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditionType: pulumi.Input.fromValue(map['conditionType'] as String),
    );
  }
}

