// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boolean_condition_properties_response.dart';

/// Describes an automation rule condition with boolean operators.
class AutomationRuleBooleanConditionResponse {
  final List<BooleanConditionPropertiesResponse>? innerConditions;
  /// Describes a boolean condition operator.
  final String? operator;

  /// Creates a new [AutomationRuleBooleanConditionResponse].
  /// [innerConditions] Optional.
  /// [operator] Describes a boolean condition operator.
  AutomationRuleBooleanConditionResponse({
    this.innerConditions,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'innerConditions': ?innerConditions == null ? null : pulumi.Input.encodeList<BooleanConditionPropertiesResponse, Map<String, dynamic>>(innerConditions!, (value) => value.toMap()),
      'operator': ?operator,
    };
  }

  factory AutomationRuleBooleanConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleBooleanConditionResponse(
      innerConditions: map['innerConditions'] == null ? null : pulumi.Input.decodeList<BooleanConditionPropertiesResponse>(map['innerConditions'], (value) => BooleanConditionPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      operator: map['operator'] == null ? null : map['operator'] as String,
    );
  }
}

