// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boolean_condition_properties.dart';

/// Describes an automation rule condition with boolean operators.
class AutomationRuleBooleanCondition {
  final List<BooleanConditionProperties>? innerConditions;
  /// Describes a boolean condition operator.
  final String? operator;

  /// Creates a new [AutomationRuleBooleanCondition].
  /// [innerConditions] Optional.
  /// [operator] Describes a boolean condition operator.
  AutomationRuleBooleanCondition({
    this.innerConditions,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'innerConditions': ?innerConditions == null ? null : pulumi.Input.encodeList<BooleanConditionProperties, Map<String, dynamic>>(innerConditions!, (value) => value.toMap()),
      'operator': ?operator,
    };
  }

  factory AutomationRuleBooleanCondition.fromMap(Map<String, dynamic> map) {
    return AutomationRuleBooleanCondition(
      innerConditions: map['innerConditions'] == null ? null : pulumi.Input.decodeList<BooleanConditionProperties>(map['innerConditions'], (value) => BooleanConditionProperties.fromMap((value as Map).cast<String, dynamic>())),
      operator: map['operator'] == null ? null : map['operator'] as String,
    );
  }
}

