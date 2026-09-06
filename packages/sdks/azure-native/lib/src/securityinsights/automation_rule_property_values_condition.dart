// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRulePropertyValuesCondition {
  final pulumi.Input<dynamic>? operator;
  /// The property to evaluate in an automation rule property condition.
  final pulumi.Input<dynamic>? propertyName;
  final pulumi.Input<List<String>?>? propertyValues;

  /// Creates a new [AutomationRulePropertyValuesCondition].
  /// [operator] Optional.
  /// [propertyName] The property to evaluate in an automation rule property condition.
  /// [propertyValues] Optional.
  const AutomationRulePropertyValuesCondition({
    this.operator,
    this.propertyName,
    this.propertyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': ?operator,
      'propertyName': ?propertyName,
      'propertyValues': ?propertyValues,
    };
  }

  factory AutomationRulePropertyValuesCondition.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyValuesCondition(
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      propertyName: (() { final guardedValue = map['propertyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      propertyValues: (() { final guardedValue = map['propertyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
