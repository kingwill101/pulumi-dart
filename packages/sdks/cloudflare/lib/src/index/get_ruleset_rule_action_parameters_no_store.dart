// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersNoStore {
  /// Whether to apply the directive only to Cloudflare's cache.
  final pulumi.Input<bool> cloudflareOnly;
  /// The operation to perform.
  /// Available values: "set", "remove".
  final pulumi.Input<String> operation;

  /// Creates a new [GetRulesetRuleActionParametersNoStore].
  /// [cloudflareOnly] Whether to apply the directive only to Cloudflare's cache.
  /// [operation] The operation to perform.
  const GetRulesetRuleActionParametersNoStore({
    required this.cloudflareOnly,
    required this.operation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudflareOnly': cloudflareOnly,
      'operation': operation,
    };
  }

  factory GetRulesetRuleActionParametersNoStore.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersNoStore(
      cloudflareOnly: pulumi.Input.fromValue(map['cloudflareOnly'] as bool),
      operation: pulumi.Input.fromValue(map['operation'] as String),
    );
  }
}
