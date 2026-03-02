// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRulePropertyArrayChangedValuesConditionResponse {
  final pulumi.Input<String>? arrayType;
  final pulumi.Input<String>? changeType;

  /// Creates a new [AutomationRulePropertyArrayChangedValuesConditionResponse].
  /// [arrayType] Optional.
  /// [changeType] Optional.
  AutomationRulePropertyArrayChangedValuesConditionResponse({
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
      arrayType: map['arrayType'] == null ? null : (map['arrayType'] as String).input(),
      changeType: map['changeType'] == null ? null : (map['changeType'] as String).input(),
    );
  }
}

