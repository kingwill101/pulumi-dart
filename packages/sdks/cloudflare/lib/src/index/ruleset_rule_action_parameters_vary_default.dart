// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersVaryDefault {
  /// How the header value is treated when building the cache key.
  /// Available values: "bypass", "passthrough", "normalize".
  final pulumi.Input<String> action;

  /// Creates a new [RulesetRuleActionParametersVaryDefault].
  /// [action] How the header value is treated when building the cache key.
  const RulesetRuleActionParametersVaryDefault({
    required this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
    };
  }

  factory RulesetRuleActionParametersVaryDefault.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersVaryDefault(
      action: pulumi.Input.fromValue(map['action'] as String),
    );
  }
}
