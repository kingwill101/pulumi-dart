// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boolean_condition_properties.dart';

/// Describes an automation rule condition on array properties.
class AutomationRulePropertyArrayValuesCondition {
  /// Describes an array condition evaluation type.
  final pulumi.Input<String>? arrayConditionType;
  /// Describes an array condition evaluated array type.
  final pulumi.Input<String>? arrayType;
  final pulumi.Input<List<BooleanConditionProperties>>? itemConditions;

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
      'itemConditions': ?pulumi.Input.mapOptionalInputValue<List<BooleanConditionProperties>, List<Map<String, dynamic>>>(itemConditions, (value) => pulumi.Input.encodeList<BooleanConditionProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutomationRulePropertyArrayValuesCondition.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyArrayValuesCondition(
      arrayConditionType: (() { final guardedValue = map['arrayConditionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arrayType: (() { final guardedValue = map['arrayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      itemConditions: (() { final guardedValue = map['itemConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BooleanConditionProperties>(guardedValue, (value) => BooleanConditionProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

