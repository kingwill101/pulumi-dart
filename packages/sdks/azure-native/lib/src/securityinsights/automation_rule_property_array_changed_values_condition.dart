// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRulePropertyArrayChangedValuesCondition {
  final pulumi.Input<String>? arrayType;
  final pulumi.Input<String>? changeType;

  /// Creates a new [AutomationRulePropertyArrayChangedValuesCondition].
  /// [arrayType] Optional.
  /// [changeType] Optional.
  AutomationRulePropertyArrayChangedValuesCondition({
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
      arrayType: map['arrayType'] == null ? null : (map['arrayType']! as String).input(),
      changeType: map['changeType'] == null ? null : (map['changeType']! as String).input(),
    );
  }
}

