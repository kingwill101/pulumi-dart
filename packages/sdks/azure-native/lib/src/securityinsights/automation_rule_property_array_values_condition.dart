// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an automation rule condition on array properties.
class AutomationRulePropertyArrayValuesCondition {
  /// Describes an array condition evaluation type.
  final pulumi.Input<dynamic>? arrayConditionType;
  /// Describes an array condition evaluated array type.
  final pulumi.Input<dynamic>? arrayType;
  final pulumi.Input<List<dynamic>?>? itemConditions;

  /// Creates a new [AutomationRulePropertyArrayValuesCondition].
  /// [arrayConditionType] Describes an array condition evaluation type.
  /// [arrayType] Describes an array condition evaluated array type.
  /// [itemConditions] Optional.
  const AutomationRulePropertyArrayValuesCondition({
    this.arrayConditionType,
    this.arrayType,
    this.itemConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayConditionType': ?arrayConditionType,
      'arrayType': ?arrayType,
      'itemConditions': ?itemConditions,
    };
  }

  factory AutomationRulePropertyArrayValuesCondition.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyArrayValuesCondition(
      arrayConditionType: (() { final guardedValue = map['arrayConditionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      arrayType: (() { final guardedValue = map['arrayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      itemConditions: (() { final guardedValue = map['itemConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}
