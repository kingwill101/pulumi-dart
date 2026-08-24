// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule_action_parameters_overrides_category.dart';
import 'get_ruleset_rule_action_parameters_overrides_rule.dart';

class GetRulesetRuleActionParametersOverrides {
  /// An action to override all rules with. This option has lower precedence than rule and category overrides.
  final pulumi.Input<String> action;
  /// A list of category-level overrides. This option has the second-highest precedence after rule-level overrides.
  final pulumi.Input<List<GetRulesetRuleActionParametersOverridesCategory>> categories;
  /// Whether to enable execution of all rules. This option has lower precedence than rule and category overrides.
  final pulumi.Input<bool> enabled;
  /// A list of rule-level overrides. This option has the highest precedence.
  final pulumi.Input<List<GetRulesetRuleActionParametersOverridesRule>> rules;
  /// A sensitivity level to set for all rules. This option has lower precedence than rule and category overrides and is only applicable for DDoS phases.
  /// Available values: "default", "medium", "low", "eoff".
  final pulumi.Input<String> sensitivityLevel;

  /// Creates a new [GetRulesetRuleActionParametersOverrides].
  /// [action] An action to override all rules with. This option has lower precedence than rule and category overrides.
  /// [categories] A list of category-level overrides. This option has the second-highest precedence after rule-level overrides.
  /// [enabled] Whether to enable execution of all rules. This option has lower precedence than rule and category overrides.
  /// [rules] A list of rule-level overrides. This option has the highest precedence.
  /// [sensitivityLevel] A sensitivity level to set for all rules. This option has lower precedence than rule and category overrides and is only applicable for DDoS phases.
  const GetRulesetRuleActionParametersOverrides({
    required this.action,
    required this.categories,
    required this.enabled,
    required this.rules,
    required this.sensitivityLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'categories': pulumi.Input.mapInputValue<List<GetRulesetRuleActionParametersOverridesCategory>, List<Map<String, dynamic>>>(categories, (value) => pulumi.Input.encodeList<GetRulesetRuleActionParametersOverridesCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'rules': pulumi.Input.mapInputValue<List<GetRulesetRuleActionParametersOverridesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetRulesetRuleActionParametersOverridesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sensitivityLevel': sensitivityLevel,
    };
  }

  factory GetRulesetRuleActionParametersOverrides.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersOverrides(
      action: pulumi.Input.fromValue(map['action'] as String),
      categories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesetRuleActionParametersOverridesCategory>(map['categories']!, (value) => GetRulesetRuleActionParametersOverridesCategory.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesetRuleActionParametersOverridesRule>(map['rules']!, (value) => GetRulesetRuleActionParametersOverridesRule.fromMap((value as Map).cast<String, dynamic>()))),
      sensitivityLevel: pulumi.Input.fromValue(map['sensitivityLevel'] as String),
    );
  }
}
