// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude {
  /// Whether to exclude all query string parameters from the cache key.
  final pulumi.Input<bool> all;
  /// A list of query string parameters to exclude from the cache key.
  final pulumi.Input<List<String>> lists;

  /// Creates a new [GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude].
  /// [all] Whether to exclude all query string parameters from the cache key.
  /// [lists] A list of query string parameters to exclude from the cache key.
  const GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude({
    required this.all,
    required this.lists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': all,
      'lists': lists,
    };
  }

  factory GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringExclude(
      all: pulumi.Input.fromValue(map['all'] as bool),
      lists: pulumi.Input.fromValue((map['lists'] as List).cast<String>()),
    );
  }
}
