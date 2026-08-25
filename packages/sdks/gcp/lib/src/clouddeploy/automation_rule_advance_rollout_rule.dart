// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleAdvanceRolloutRule {
  /// Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  final pulumi.Input<String> id;
  /// Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  final pulumi.Input<List<String>?>? sourcePhases;
  /// Optional. How long to wait after a rollout is finished.
  final pulumi.Input<String?>? wait;

  /// Creates a new [AutomationRuleAdvanceRolloutRule].
  /// [id] Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  /// [sourcePhases] Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  /// [wait] Optional. How long to wait after a rollout is finished.
  const AutomationRuleAdvanceRolloutRule({
    required this.id,
    this.sourcePhases,
    this.wait,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'sourcePhases': ?sourcePhases,
      'wait': ?wait,
    };
  }

  factory AutomationRuleAdvanceRolloutRule.fromMap(Map<String, dynamic> map) {
    return AutomationRuleAdvanceRolloutRule(
      id: pulumi.Input.fromValue(map['id'] as String),
      sourcePhases: (() { final guardedValue = map['sourcePhases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      wait: (() { final guardedValue = map['wait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
