// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersNoCache {
  /// Whether to apply the directive only to Cloudflare's cache.
  final pulumi.Input<bool> cloudflareOnly;
  /// The operation to perform.
  /// Available values: "set", "remove".
  final pulumi.Input<String> operation;
  /// The qualifiers for the directive.
  final pulumi.Input<List<String>> qualifiers;

  /// Creates a new [GetRulesetRuleActionParametersNoCache].
  /// [cloudflareOnly] Whether to apply the directive only to Cloudflare's cache.
  /// [operation] The operation to perform.
  /// [qualifiers] The qualifiers for the directive.
  const GetRulesetRuleActionParametersNoCache({
    required this.cloudflareOnly,
    required this.operation,
    required this.qualifiers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudflareOnly': cloudflareOnly,
      'operation': operation,
      'qualifiers': qualifiers,
    };
  }

  factory GetRulesetRuleActionParametersNoCache.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersNoCache(
      cloudflareOnly: pulumi.Input.fromValue(map['cloudflareOnly'] as bool),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      qualifiers: pulumi.Input.fromValue((map['qualifiers'] as List).cast<String>()),
    );
  }
}
