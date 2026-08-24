// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersProxyRevalidate {
  /// Whether to apply the directive only to Cloudflare's cache.
  final pulumi.Input<bool> cloudflareOnly;
  /// The operation to perform.
  /// Available values: "set", "remove".
  final pulumi.Input<String> operation;

  /// Creates a new [GetRulesetRuleActionParametersProxyRevalidate].
  /// [cloudflareOnly] Whether to apply the directive only to Cloudflare's cache.
  /// [operation] The operation to perform.
  const GetRulesetRuleActionParametersProxyRevalidate({
    required this.cloudflareOnly,
    required this.operation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudflareOnly': cloudflareOnly,
      'operation': operation,
    };
  }

  factory GetRulesetRuleActionParametersProxyRevalidate.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersProxyRevalidate(
      cloudflareOnly: pulumi.Input.fromValue(map['cloudflareOnly'] as bool),
      operation: pulumi.Input.fromValue(map['operation'] as String),
    );
  }
}
