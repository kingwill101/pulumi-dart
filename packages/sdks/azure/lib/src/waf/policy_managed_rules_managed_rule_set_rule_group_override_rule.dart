// ignore_for_file: unused_element, unnecessary_cast


class PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule {
  /// Describes the override action to be applied when rule matches. Possible values are `Allow`, `AnomalyScoring`, `Block`, `JSChallenge` and `Log`. `JSChallenge` is only valid for rulesets of type `Microsoft_BotManagerRuleSet`.
  final String? action;
  /// Describes if the managed rule is in enabled state or disabled state. Defaults to `false`.
  final bool? enabled;
  /// Identifier for the managed rule.
  final String id;

  /// Creates a new [PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule].
  /// [action] Describes the override action to be applied when rule matches. Possible values are `Allow`, `AnomalyScoring`, `Block`, `JSChallenge` and `Log`. `JSChallenge` is only valid for rulesets of type `Microsoft_BotManagerRuleSet`.
  /// [enabled] Describes if the managed rule is in enabled state or disabled state. Defaults to `false`.
  /// [id] Identifier for the managed rule.
  PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule({
    this.action,
    this.enabled,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'enabled': ?enabled,
      'id': id,
    };
  }

  factory PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule.fromMap(Map<String, dynamic> map) {
    return PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule(
      action: map['action'] == null ? null : map['action'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      id: map['id'] as String,
    );
  }
}

