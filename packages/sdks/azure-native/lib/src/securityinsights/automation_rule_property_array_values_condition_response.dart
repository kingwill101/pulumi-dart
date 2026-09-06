// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an automation rule condition on array properties.
class AutomationRulePropertyArrayValuesConditionResponse {
  /// Describes an array condition evaluation type.
  final pulumi.Input<String?>? arrayConditionType;
  /// Describes an array condition evaluated array type.
  final pulumi.Input<String?>? arrayType;
  final pulumi.Input<List<dynamic>?>? itemConditions;

  /// Creates a new [AutomationRulePropertyArrayValuesConditionResponse].
  /// [arrayConditionType] Describes an array condition evaluation type.
  /// [arrayType] Describes an array condition evaluated array type.
  /// [itemConditions] Optional.
  const AutomationRulePropertyArrayValuesConditionResponse({
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

  factory AutomationRulePropertyArrayValuesConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyArrayValuesConditionResponse(
      arrayConditionType: (() { final guardedValue = map['arrayConditionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arrayType: (() { final guardedValue = map['arrayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      itemConditions: (() { final guardedValue = map['itemConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}
