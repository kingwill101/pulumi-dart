// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRulePropertyValuesChangedCondition {
  final pulumi.Input<String>? changeType;
  final pulumi.Input<String>? operator;
  final pulumi.Input<String>? propertyName;
  final pulumi.Input<List<String>>? propertyValues;

  /// Creates a new [AutomationRulePropertyValuesChangedCondition].
  /// [changeType] Optional.
  /// [operator] Optional.
  /// [propertyName] Optional.
  /// [propertyValues] Optional.
  const AutomationRulePropertyValuesChangedCondition({
    this.changeType,
    this.operator,
    this.propertyName,
    this.propertyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeType': ?changeType,
      'operator': ?operator,
      'propertyName': ?propertyName,
      'propertyValues': ?propertyValues,
    };
  }

  factory AutomationRulePropertyValuesChangedCondition.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyValuesChangedCondition(
      changeType: (() { final guardedValue = map['changeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyName: (() { final guardedValue = map['propertyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyValues: (() { final guardedValue = map['propertyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
