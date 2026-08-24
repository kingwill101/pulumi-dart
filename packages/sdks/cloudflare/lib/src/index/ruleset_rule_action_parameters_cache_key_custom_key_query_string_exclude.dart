// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude {
  /// Whether to exclude all query string parameters from the cache key.
  final pulumi.Input<bool?>? all;
  /// A list of query string parameters to exclude from the cache key.
  final pulumi.Input<List<String>?>? lists;

  /// Creates a new [RulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude].
  /// [all] Whether to exclude all query string parameters from the cache key.
  /// [lists] A list of query string parameters to exclude from the cache key.
  const RulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude({
    this.all,
    this.lists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'lists': ?lists,
    };
  }

  factory RulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lists: (() { final guardedValue = map['lists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
