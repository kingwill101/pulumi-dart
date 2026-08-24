// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersOverridesRule {
  /// The action to override the rule with.
  final pulumi.Input<String?>? action;
  /// Whether to enable execution of the rule.
  final pulumi.Input<bool?>? enabled;
  /// The ID of the rule to override.
  final pulumi.Input<String> id;
  /// The score threshold to use for the rule.
  final pulumi.Input<int?>? scoreThreshold;
  /// The sensitivity level to use for the rule. This option is only applicable for DDoS phases.
  /// Available values: "default", "medium", "low", "eoff".
  final pulumi.Input<String?>? sensitivityLevel;

  /// Creates a new [RulesetRuleActionParametersOverridesRule].
  /// [action] The action to override the rule with.
  /// [enabled] Whether to enable execution of the rule.
  /// [id] The ID of the rule to override.
  /// [scoreThreshold] The score threshold to use for the rule.
  /// [sensitivityLevel] The sensitivity level to use for the rule. This option is only applicable for DDoS phases.
  const RulesetRuleActionParametersOverridesRule({
    this.action,
    this.enabled,
    required this.id,
    this.scoreThreshold,
    this.sensitivityLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'enabled': ?enabled,
      'id': id,
      'scoreThreshold': ?scoreThreshold,
      'sensitivityLevel': ?sensitivityLevel,
    };
  }

  factory RulesetRuleActionParametersOverridesRule.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersOverridesRule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      scoreThreshold: (() { final guardedValue = map['scoreThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sensitivityLevel: (() { final guardedValue = map['sensitivityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
