// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRulePropertyValuesChangedConditionResponse {
  final pulumi.Input<String>? changeType;
  final pulumi.Input<String>? operator;
  final pulumi.Input<String>? propertyName;
  final pulumi.Input<List<String>>? propertyValues;

  /// Creates a new [AutomationRulePropertyValuesChangedConditionResponse].
  /// [changeType] Optional.
  /// [operator] Optional.
  /// [propertyName] Optional.
  /// [propertyValues] Optional.
  AutomationRulePropertyValuesChangedConditionResponse({
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

  factory AutomationRulePropertyValuesChangedConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyValuesChangedConditionResponse(
      changeType: map['changeType'] == null ? null : (map['changeType']! as String).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
      propertyName: map['propertyName'] == null ? null : (map['propertyName']! as String).input(),
      propertyValues: map['propertyValues'] == null ? null : ((map['propertyValues']! as List).cast<String>()).input(),
    );
  }
}

