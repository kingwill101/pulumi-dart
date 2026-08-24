// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersOverridesCategory {
  /// The action to override rules in the category with.
  final pulumi.Input<String?>? action;
  /// The name of the category to override.
  final pulumi.Input<String> category;
  /// Whether to enable execution of rules in the category.
  final pulumi.Input<bool?>? enabled;
  /// The sensitivity level to use for rules in the category. This option is only applicable for DDoS phases.
  /// Available values: "default", "medium", "low", "eoff".
  final pulumi.Input<String?>? sensitivityLevel;

  /// Creates a new [RulesetRuleActionParametersOverridesCategory].
  /// [action] The action to override rules in the category with.
  /// [category] The name of the category to override.
  /// [enabled] Whether to enable execution of rules in the category.
  /// [sensitivityLevel] The sensitivity level to use for rules in the category. This option is only applicable for DDoS phases.
  const RulesetRuleActionParametersOverridesCategory({
    this.action,
    required this.category,
    this.enabled,
    this.sensitivityLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'category': category,
      'enabled': ?enabled,
      'sensitivityLevel': ?sensitivityLevel,
    };
  }

  factory RulesetRuleActionParametersOverridesCategory.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersOverridesCategory(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: pulumi.Input.fromValue(map['category'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sensitivityLevel: (() { final guardedValue = map['sensitivityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
