// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule_action_parameters_cache_key_custom_key_query_string_exclude.dart';
import 'get_ruleset_rule_action_parameters_cache_key_custom_key_query_string_include.dart';

class GetRulesetRuleActionParametersCacheKeyCustomKeyQueryString {
  /// Which query string parameters to exclude from the cache key.
  final pulumi.Input<GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude> exclude;
  /// Which query string parameters to include in the cache key.
  final pulumi.Input<GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude> include;

  /// Creates a new [GetRulesetRuleActionParametersCacheKeyCustomKeyQueryString].
  /// [exclude] Which query string parameters to exclude from the cache key.
  /// [include] Which query string parameters to include in the cache key.
  const GetRulesetRuleActionParametersCacheKeyCustomKeyQueryString({
    required this.exclude,
    required this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclude': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude, Map<String, dynamic>>(exclude, (value) => value.toMap()),
      'include': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude, Map<String, dynamic>>(include, (value) => value.toMap()),
    };
  }

  factory GetRulesetRuleActionParametersCacheKeyCustomKeyQueryString.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersCacheKeyCustomKeyQueryString(
      exclude: pulumi.Input.fromValue(GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude.fromMap((map['exclude']! as Map).cast<String, dynamic>())),
      include: pulumi.Input.fromValue(GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude.fromMap((map['include']! as Map).cast<String, dynamic>())),
    );
  }
}
