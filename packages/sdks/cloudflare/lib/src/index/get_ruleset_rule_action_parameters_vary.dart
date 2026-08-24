// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule_action_parameters_vary_default.dart';
import 'get_ruleset_rule_action_parameters_vary_headers.dart';

class GetRulesetRuleActionParametersVary {
  /// Controls how response Vary headers without a per-header override contribute to the cache key.
  final pulumi.Input<GetRulesetRuleActionParametersVaryDefault> default_;
  /// A mapping of lowercase request header names to their vary configuration.
  final pulumi.Input<Map<String, GetRulesetRuleActionParametersVaryHeaders>> headers;

  /// Creates a new [GetRulesetRuleActionParametersVary].
  /// [default_] Controls how response Vary headers without a per-header override contribute to the cache key.
  /// [headers] A mapping of lowercase request header names to their vary configuration.
  const GetRulesetRuleActionParametersVary({
    required this.default_,
    required this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersVaryDefault, Map<String, dynamic>>(default_, (value) => value.toMap()),
      'headers': pulumi.Input.mapInputValue<Map<String, GetRulesetRuleActionParametersVaryHeaders>, Map<String, Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeMapValues<GetRulesetRuleActionParametersVaryHeaders, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRulesetRuleActionParametersVary.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersVary(
      default_: pulumi.Input.fromValue(GetRulesetRuleActionParametersVaryDefault.fromMap((map['default']! as Map).cast<String, dynamic>())),
      headers: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetRulesetRuleActionParametersVaryHeaders>(map['headers']!, (value) => GetRulesetRuleActionParametersVaryHeaders.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
