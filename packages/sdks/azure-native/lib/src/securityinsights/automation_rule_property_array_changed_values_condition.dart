// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRulePropertyArrayChangedValuesCondition {
  final pulumi.Input<String>? arrayType;
  final pulumi.Input<String>? changeType;

  /// Creates a new [AutomationRulePropertyArrayChangedValuesCondition].
  /// [arrayType] Optional.
  /// [changeType] Optional.
  const AutomationRulePropertyArrayChangedValuesCondition({
    this.arrayType,
    this.changeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayType': ?arrayType,
      'changeType': ?changeType,
    };
  }

  factory AutomationRulePropertyArrayChangedValuesCondition.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyArrayChangedValuesCondition(
      arrayType: (() { final guardedValue = map['arrayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      changeType: (() { final guardedValue = map['changeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
