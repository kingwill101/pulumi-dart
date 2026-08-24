// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersStaleIfError {
  /// Whether to apply the directive only to Cloudflare's cache.
  final pulumi.Input<bool?>? cloudflareOnly;
  /// The operation to perform.
  /// Available values: "set", "remove".
  final pulumi.Input<String> operation;
  /// The value for the directive in seconds.
  final pulumi.Input<int?>? value;

  /// Creates a new [RulesetRuleActionParametersStaleIfError].
  /// [cloudflareOnly] Whether to apply the directive only to Cloudflare's cache.
  /// [operation] The operation to perform.
  /// [value] The value for the directive in seconds.
  const RulesetRuleActionParametersStaleIfError({
    this.cloudflareOnly,
    required this.operation,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudflareOnly': ?cloudflareOnly,
      'operation': operation,
      'value': ?value,
    };
  }

  factory RulesetRuleActionParametersStaleIfError.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersStaleIfError(
      cloudflareOnly: (() { final guardedValue = map['cloudflareOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
