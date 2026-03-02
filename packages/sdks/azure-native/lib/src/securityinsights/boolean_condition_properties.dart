// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_boolean_condition.dart';

/// Describes an automation rule condition that applies a boolean operator (e.g AND, OR) to conditions
class BooleanConditionProperties {
  /// Describes an automation rule condition with boolean operators.
  final pulumi.Input<AutomationRuleBooleanCondition>? conditionProperties;
  /// Expected value is 'Boolean'.
  final pulumi.Input<String> conditionType;

  /// Creates a new [BooleanConditionProperties].
  /// [conditionProperties] Describes an automation rule condition with boolean operators.
  /// [conditionType] Expected value is 'Boolean'.
  BooleanConditionProperties({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?pulumi.Input.mapOptionalInputValue<AutomationRuleBooleanCondition, Map<String, dynamic>>(conditionProperties, (value) => value.toMap()),
      'conditionType': conditionType,
    };
  }

  factory BooleanConditionProperties.fromMap(Map<String, dynamic> map) {
    return BooleanConditionProperties(
      conditionProperties: map['conditionProperties'] == null ? null : (AutomationRuleBooleanCondition.fromMap((map['conditionProperties']! as Map).cast<String, dynamic>())).input(),
      conditionType: (map['conditionType'] as String).input(),
    );
  }
}

