// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersMustRevalidate {
  /// Whether to apply the directive only to Cloudflare's cache.
  final pulumi.Input<bool?>? cloudflareOnly;
  /// The operation to perform.
  /// Available values: "set", "remove".
  final pulumi.Input<String> operation;

  /// Creates a new [RulesetRuleActionParametersMustRevalidate].
  /// [cloudflareOnly] Whether to apply the directive only to Cloudflare's cache.
  /// [operation] The operation to perform.
  const RulesetRuleActionParametersMustRevalidate({
    this.cloudflareOnly,
    required this.operation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudflareOnly': ?cloudflareOnly,
      'operation': operation,
    };
  }

  factory RulesetRuleActionParametersMustRevalidate.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersMustRevalidate(
      cloudflareOnly: (() { final guardedValue = map['cloudflareOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operation: pulumi.Input.fromValue(map['operation'] as String),
    );
  }
}
