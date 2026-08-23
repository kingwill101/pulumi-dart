// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRulePropertyValuesConditionResponse {
  final pulumi.Input<String>? operator;
  /// The property to evaluate in an automation rule property condition.
  final pulumi.Input<String>? propertyName;
  final pulumi.Input<List<String>>? propertyValues;

  /// Creates a new [AutomationRulePropertyValuesConditionResponse].
  /// [operator] Optional.
  /// [propertyName] The property to evaluate in an automation rule property condition.
  /// [propertyValues] Optional.
  const AutomationRulePropertyValuesConditionResponse({
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

  factory AutomationRulePropertyValuesConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyValuesConditionResponse(
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyName: (() { final guardedValue = map['propertyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyValues: (() { final guardedValue = map['propertyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
