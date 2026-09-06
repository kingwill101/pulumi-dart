// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an automation rule condition with boolean operators.
class AutomationRuleBooleanCondition {
  final pulumi.Input<List<dynamic>?>? innerConditions;
  /// Describes a boolean condition operator.
  final pulumi.Input<dynamic>? operator;

  /// Creates a new [AutomationRuleBooleanCondition].
  /// [innerConditions] Optional.
  /// [operator] Describes a boolean condition operator.
  const AutomationRuleBooleanCondition({
    this.innerConditions,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'innerConditions': ?innerConditions,
      'operator': ?operator,
    };
  }

  factory AutomationRuleBooleanCondition.fromMap(Map<String, dynamic> map) {
    return AutomationRuleBooleanCondition(
      innerConditions: (() { final guardedValue = map['innerConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
