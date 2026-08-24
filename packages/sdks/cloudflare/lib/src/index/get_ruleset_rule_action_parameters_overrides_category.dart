// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersOverridesCategory {
  /// The action to override rules in the category with.
  final pulumi.Input<String> action;
  /// The name of the category to override.
  final pulumi.Input<String> category;
  /// Whether to enable execution of rules in the category.
  final pulumi.Input<bool> enabled;
  /// The sensitivity level to use for rules in the category. This option is only applicable for DDoS phases.
  /// Available values: "default", "medium", "low", "eoff".
  final pulumi.Input<String> sensitivityLevel;

  /// Creates a new [GetRulesetRuleActionParametersOverridesCategory].
  /// [action] The action to override rules in the category with.
  /// [category] The name of the category to override.
  /// [enabled] Whether to enable execution of rules in the category.
  /// [sensitivityLevel] The sensitivity level to use for rules in the category. This option is only applicable for DDoS phases.
  const GetRulesetRuleActionParametersOverridesCategory({
    required this.action,
    required this.category,
    required this.enabled,
    required this.sensitivityLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'category': category,
      'enabled': enabled,
      'sensitivityLevel': sensitivityLevel,
    };
  }

  factory GetRulesetRuleActionParametersOverridesCategory.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersOverridesCategory(
      action: pulumi.Input.fromValue(map['action'] as String),
      category: pulumi.Input.fromValue(map['category'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      sensitivityLevel: pulumi.Input.fromValue(map['sensitivityLevel'] as String),
    );
  }
}
