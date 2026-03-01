// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boolean_condition_properties_response.dart';

/// Describes an automation rule condition on array properties.
class AutomationRulePropertyArrayValuesConditionResponse {
  /// Describes an array condition evaluation type.
  final String? arrayConditionType;
  /// Describes an array condition evaluated array type.
  final String? arrayType;
  final List<BooleanConditionPropertiesResponse>? itemConditions;

  /// Creates a new [AutomationRulePropertyArrayValuesConditionResponse].
  /// [arrayConditionType] Describes an array condition evaluation type.
  /// [arrayType] Describes an array condition evaluated array type.
  /// [itemConditions] Optional.
  AutomationRulePropertyArrayValuesConditionResponse({
    this.arrayConditionType,
    this.arrayType,
    this.itemConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayConditionType': ?arrayConditionType,
      'arrayType': ?arrayType,
      'itemConditions': ?itemConditions == null ? null : pulumi.Input.encodeList<BooleanConditionPropertiesResponse, Map<String, dynamic>>(itemConditions!, (value) => value.toMap()),
    };
  }

  factory AutomationRulePropertyArrayValuesConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyArrayValuesConditionResponse(
      arrayConditionType: map['arrayConditionType'] == null ? null : map['arrayConditionType'] as String,
      arrayType: map['arrayType'] == null ? null : map['arrayType'] as String,
      itemConditions: map['itemConditions'] == null ? null : pulumi.Input.decodeList<BooleanConditionPropertiesResponse>(map['itemConditions'], (value) => BooleanConditionPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

