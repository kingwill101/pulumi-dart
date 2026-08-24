// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersNoCache {
  /// Whether to apply the directive only to Cloudflare's cache.
  final pulumi.Input<bool?>? cloudflareOnly;
  /// The operation to perform.
  /// Available values: "set", "remove".
  final pulumi.Input<String> operation;
  /// The qualifiers for the directive.
  final pulumi.Input<List<String>?>? qualifiers;

  /// Creates a new [RulesetRuleActionParametersNoCache].
  /// [cloudflareOnly] Whether to apply the directive only to Cloudflare's cache.
  /// [operation] The operation to perform.
  /// [qualifiers] The qualifiers for the directive.
  const RulesetRuleActionParametersNoCache({
    this.cloudflareOnly,
    required this.operation,
    this.qualifiers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudflareOnly': ?cloudflareOnly,
      'operation': operation,
      'qualifiers': ?qualifiers,
    };
  }

  factory RulesetRuleActionParametersNoCache.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersNoCache(
      cloudflareOnly: (() { final guardedValue = map['cloudflareOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      qualifiers: (() { final guardedValue = map['qualifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
