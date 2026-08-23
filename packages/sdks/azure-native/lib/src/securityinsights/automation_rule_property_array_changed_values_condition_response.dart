// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRulePropertyArrayChangedValuesConditionResponse {
  final pulumi.Input<String>? arrayType;
  final pulumi.Input<String>? changeType;

  /// Creates a new [AutomationRulePropertyArrayChangedValuesConditionResponse].
  /// [arrayType] Optional.
  /// [changeType] Optional.
  const AutomationRulePropertyArrayChangedValuesConditionResponse({
    this.arrayType,
    this.changeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayType': ?arrayType,
      'changeType': ?changeType,
    };
  }

  factory AutomationRulePropertyArrayChangedValuesConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyArrayChangedValuesConditionResponse(
      arrayType: (() { final guardedValue = map['arrayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      changeType: (() { final guardedValue = map['changeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
