// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude {
  /// Whether to include all query string parameters in the cache key.
  final pulumi.Input<bool?>? all;
  /// A list of query string parameters to include in the cache key.
  final pulumi.Input<List<String>?>? lists;

  /// Creates a new [RulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude].
  /// [all] Whether to include all query string parameters in the cache key.
  /// [lists] A list of query string parameters to include in the cache key.
  const RulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude({
    this.all,
    this.lists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'lists': ?lists,
    };
  }

  factory RulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lists: (() { final guardedValue = map['lists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
