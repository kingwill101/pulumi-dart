// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule_action_parameters_cache_key_custom_key_query_string_exclude.dart';
import 'ruleset_rule_action_parameters_cache_key_custom_key_query_string_include.dart';

class RulesetRuleActionParametersCacheKeyCustomKeyQueryString {
  /// Which query string parameters to exclude from the cache key.
  final pulumi.Input<RulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude?>? exclude;
  /// Which query string parameters to include in the cache key.
  final pulumi.Input<RulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude?>? include;

  /// Creates a new [RulesetRuleActionParametersCacheKeyCustomKeyQueryString].
  /// [exclude] Which query string parameters to exclude from the cache key.
  /// [include] Which query string parameters to include in the cache key.
  const RulesetRuleActionParametersCacheKeyCustomKeyQueryString({
    this.exclude,
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclude': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude, Map<String, dynamic>>(exclude, (value) => value.toMap()),
      'include': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude, Map<String, dynamic>>(include, (value) => value.toMap()),
    };
  }

  factory RulesetRuleActionParametersCacheKeyCustomKeyQueryString.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersCacheKeyCustomKeyQueryString(
      exclude: (() { final guardedValue = map['exclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
