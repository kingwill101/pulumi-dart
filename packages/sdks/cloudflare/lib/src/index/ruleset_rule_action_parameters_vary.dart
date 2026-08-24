// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule_action_parameters_vary_default.dart';
import 'ruleset_rule_action_parameters_vary_headers.dart';

class RulesetRuleActionParametersVary {
  /// Controls how response Vary headers without a per-header override contribute to the cache key.
  final pulumi.Input<RulesetRuleActionParametersVaryDefault> default_;
  /// A mapping of lowercase request header names to their vary configuration.
  final pulumi.Input<Map<String, RulesetRuleActionParametersVaryHeaders>?>? headers;

  /// Creates a new [RulesetRuleActionParametersVary].
  /// [default_] Controls how response Vary headers without a per-header override contribute to the cache key.
  /// [headers] A mapping of lowercase request header names to their vary configuration.
  const RulesetRuleActionParametersVary({
    required this.default_,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': pulumi.Input.mapInputValue<RulesetRuleActionParametersVaryDefault, Map<String, dynamic>>(default_, (value) => value.toMap()),
      'headers': ?pulumi.Input.mapOptionalInputValue<Map<String, RulesetRuleActionParametersVaryHeaders>, Map<String, Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeMapValues<RulesetRuleActionParametersVaryHeaders, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RulesetRuleActionParametersVary.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersVary(
      default_: pulumi.Input.fromValue(RulesetRuleActionParametersVaryDefault.fromMap((map['default']! as Map).cast<String, dynamic>())),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<RulesetRuleActionParametersVaryHeaders>(guardedValue, (value) => RulesetRuleActionParametersVaryHeaders.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
