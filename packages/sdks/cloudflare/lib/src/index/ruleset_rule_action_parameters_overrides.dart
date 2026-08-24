// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule_action_parameters_overrides_category.dart';
import 'ruleset_rule_action_parameters_overrides_rule.dart';

class RulesetRuleActionParametersOverrides {
  /// An action to override all rules with. This option has lower precedence than rule and category overrides.
  final pulumi.Input<String?>? action;
  /// A list of category-level overrides. This option has the second-highest precedence after rule-level overrides.
  final pulumi.Input<List<RulesetRuleActionParametersOverridesCategory>?>? categories;
  /// Whether to enable execution of all rules. This option has lower precedence than rule and category overrides.
  final pulumi.Input<bool?>? enabled;
  /// A list of rule-level overrides. This option has the highest precedence.
  final pulumi.Input<List<RulesetRuleActionParametersOverridesRule>?>? rules;
  /// A sensitivity level to set for all rules. This option has lower precedence than rule and category overrides and is only applicable for DDoS phases.
  /// Available values: "default", "medium", "low", "eoff".
  final pulumi.Input<String?>? sensitivityLevel;

  /// Creates a new [RulesetRuleActionParametersOverrides].
  /// [action] An action to override all rules with. This option has lower precedence than rule and category overrides.
  /// [categories] A list of category-level overrides. This option has the second-highest precedence after rule-level overrides.
  /// [enabled] Whether to enable execution of all rules. This option has lower precedence than rule and category overrides.
  /// [rules] A list of rule-level overrides. This option has the highest precedence.
  /// [sensitivityLevel] A sensitivity level to set for all rules. This option has lower precedence than rule and category overrides and is only applicable for DDoS phases.
  const RulesetRuleActionParametersOverrides({
    this.action,
    this.categories,
    this.enabled,
    this.rules,
    this.sensitivityLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'categories': ?pulumi.Input.mapOptionalInputValue<List<RulesetRuleActionParametersOverridesCategory>, List<Map<String, dynamic>>>(categories, (value) => pulumi.Input.encodeList<RulesetRuleActionParametersOverridesCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RulesetRuleActionParametersOverridesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RulesetRuleActionParametersOverridesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sensitivityLevel': ?sensitivityLevel,
    };
  }

  factory RulesetRuleActionParametersOverrides.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersOverrides(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetRuleActionParametersOverridesCategory>(guardedValue, (value) => RulesetRuleActionParametersOverridesCategory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetRuleActionParametersOverridesRule>(guardedValue, (value) => RulesetRuleActionParametersOverridesRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sensitivityLevel: (() { final guardedValue = map['sensitivityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
