// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WaitingRoomRulesRule {
  /// The action to take when the expression matches.
  /// Available values: "bypass*waiting*room".
  final pulumi.Input<String> action;
  /// The description of the rule.
  final pulumi.Input<String?>? description;
  /// When set to true, the rule is enabled.
  final pulumi.Input<bool?>? enabled;
  /// Criteria defining when there is a match for the current rule.
  final pulumi.Input<String> expression;

  /// Creates a new [WaitingRoomRulesRule].
  /// [action] The action to take when the expression matches.
  /// [description] The description of the rule.
  /// [enabled] When set to true, the rule is enabled.
  /// [expression] Criteria defining when there is a match for the current rule.
  const WaitingRoomRulesRule({
    required this.action,
    this.description,
    this.enabled,
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'enabled': ?enabled,
      'expression': expression,
    };
  }

  factory WaitingRoomRulesRule.fromMap(Map<String, dynamic> map) {
    return WaitingRoomRulesRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
    );
  }
}
