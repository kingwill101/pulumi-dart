// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude {
  /// Whether to include all query string parameters in the cache key.
  final pulumi.Input<bool> all;
  /// A list of query string parameters to include in the cache key.
  final pulumi.Input<List<String>> lists;

  /// Creates a new [GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude].
  /// [all] Whether to include all query string parameters in the cache key.
  /// [lists] A list of query string parameters to include in the cache key.
  const GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude({
    required this.all,
    required this.lists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': all,
      'lists': lists,
    };
  }

  factory GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersCacheKeyCustomKeyQueryStringInclude(
      all: pulumi.Input.fromValue(map['all'] as bool),
      lists: pulumi.Input.fromValue((map['lists'] as List).cast<String>()),
    );
  }
}
