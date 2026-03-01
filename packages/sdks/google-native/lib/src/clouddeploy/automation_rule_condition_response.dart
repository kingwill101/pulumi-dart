// ignore_for_file: unused_element, unnecessary_cast

import 'targets_present_condition_response.dart';

/// `AutomationRuleCondition` contains conditions relevant to an `Automation` rule.
class AutomationRuleConditionResponse {
  /// Optional. Details around targets enumerated in the rule.
  final TargetsPresentConditionResponse targetsPresentCondition;

  /// Creates a new [AutomationRuleConditionResponse].
  /// [targetsPresentCondition] Optional. Details around targets enumerated in the rule.
  AutomationRuleConditionResponse({
    required this.targetsPresentCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetsPresentCondition': targetsPresentCondition.toMap(),
    };
  }

  factory AutomationRuleConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleConditionResponse(
      targetsPresentCondition: TargetsPresentConditionResponse.fromMap((map['targetsPresentCondition'] as Map).cast<String, dynamic>()),
    );
  }
}

