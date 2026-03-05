// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_condition_response.dart';

/// The `AdvanceRollout` automation rule will automatically advance a successful Rollout to the next phase.
class AdvanceRolloutRuleResponse {
  /// Information around the state of the Automation rule.
  final pulumi.Input<AutomationRuleConditionResponse> condition;
  /// Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final pulumi.Input<List<String>> sourcePhases;
  /// Optional. How long to wait after a rollout is finished.
  final pulumi.Input<String> wait;

  /// Creates a new [AdvanceRolloutRuleResponse].
  /// [condition] Information around the state of the Automation rule.
  /// [sourcePhases] Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  /// [wait] Optional. How long to wait after a rollout is finished.
  AdvanceRolloutRuleResponse({
    required this.condition,
    required this.sourcePhases,
    required this.wait,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': pulumi.Input.mapInputValue<AutomationRuleConditionResponse, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'sourcePhases': sourcePhases,
      'wait': wait,
    };
  }

  factory AdvanceRolloutRuleResponse.fromMap(Map<String, dynamic> map) {
    return AdvanceRolloutRuleResponse(
      condition: pulumi.Input.fromValue(AutomationRuleConditionResponse.fromMap((map['condition']! as Map).cast<String, dynamic>())),
      sourcePhases: pulumi.Input.fromValue((map['sourcePhases'] as List).cast<String>()),
      wait: pulumi.Input.fromValue(map['wait'] as String),
    );
  }
}

