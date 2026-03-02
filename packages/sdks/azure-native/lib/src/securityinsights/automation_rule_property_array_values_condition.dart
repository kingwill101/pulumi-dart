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
  AutomationRulePropertyArrayValuesCondition({
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
      arrayConditionType: map['arrayConditionType'] == null ? null : (map['arrayConditionType']! as String).input(),
      arrayType: map['arrayType'] == null ? null : (map['arrayType']! as String).input(),
      itemConditions: map['itemConditions'] == null ? null : (pulumi.Input.decodeList<BooleanConditionProperties>(map['itemConditions']!, (value) => BooleanConditionProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

