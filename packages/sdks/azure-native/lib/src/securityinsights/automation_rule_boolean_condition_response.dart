// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an automation rule condition with boolean operators.
class AutomationRuleBooleanConditionResponse {
  final pulumi.Input<List<dynamic>?>? innerConditions;
  /// Describes a boolean condition operator.
  final pulumi.Input<String?>? operator;

  /// Creates a new [AutomationRuleBooleanConditionResponse].
  /// [innerConditions] Optional.
  /// [operator] Describes a boolean condition operator.
  const AutomationRuleBooleanConditionResponse({
    this.innerConditions,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'innerConditions': ?innerConditions,
      'operator': ?operator,
    };
  }

  factory AutomationRuleBooleanConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleBooleanConditionResponse(
      innerConditions: (() { final guardedValue = map['innerConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
