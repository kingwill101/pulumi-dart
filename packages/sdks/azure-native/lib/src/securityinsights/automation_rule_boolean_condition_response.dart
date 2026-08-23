// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boolean_condition_properties_response.dart';

/// Describes an automation rule condition with boolean operators.
class AutomationRuleBooleanConditionResponse {
  final pulumi.Input<List<BooleanConditionPropertiesResponse>>? innerConditions;
  /// Describes a boolean condition operator.
  final pulumi.Input<String>? operator;

  /// Creates a new [AutomationRuleBooleanConditionResponse].
  /// [innerConditions] Optional.
  /// [operator] Describes a boolean condition operator.
  const AutomationRuleBooleanConditionResponse({
    this.innerConditions,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'innerConditions': ?pulumi.Input.mapOptionalInputValue<List<BooleanConditionPropertiesResponse>, List<Map<String, dynamic>>>(innerConditions, (value) => pulumi.Input.encodeList<BooleanConditionPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operator': ?operator,
    };
  }

  factory AutomationRuleBooleanConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleBooleanConditionResponse(
      innerConditions: (() { final guardedValue = map['innerConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BooleanConditionPropertiesResponse>(guardedValue, (value) => BooleanConditionPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
