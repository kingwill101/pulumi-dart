// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersMaxAge {
  /// Whether to apply the directive only to Cloudflare's cache.
  final pulumi.Input<bool> cloudflareOnly;
  /// The operation to perform.
  /// Available values: "set", "remove".
  final pulumi.Input<String> operation;
  /// The value for the directive in seconds.
  final pulumi.Input<int> value;

  /// Creates a new [GetRulesetRuleActionParametersMaxAge].
  /// [cloudflareOnly] Whether to apply the directive only to Cloudflare's cache.
  /// [operation] The operation to perform.
  /// [value] The value for the directive in seconds.
  const GetRulesetRuleActionParametersMaxAge({
    required this.cloudflareOnly,
    required this.operation,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudflareOnly': cloudflareOnly,
      'operation': operation,
      'value': value,
    };
  }

  factory GetRulesetRuleActionParametersMaxAge.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersMaxAge(
      cloudflareOnly: pulumi.Input.fromValue(map['cloudflareOnly'] as bool),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      value: pulumi.Input.fromValue((map['value'] as num).toInt()),
    );
  }
}
