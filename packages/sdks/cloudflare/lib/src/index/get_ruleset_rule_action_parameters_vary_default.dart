// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersVaryDefault {
  /// How the header value is treated when building the cache key.
  /// Available values: "bypass", "passthrough", "normalize".
  final pulumi.Input<String> action;

  /// Creates a new [GetRulesetRuleActionParametersVaryDefault].
  /// [action] How the header value is treated when building the cache key.
  const GetRulesetRuleActionParametersVaryDefault({
    required this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
    };
  }

  factory GetRulesetRuleActionParametersVaryDefault.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersVaryDefault(
      action: pulumi.Input.fromValue(map['action'] as String),
    );
  }
}
