// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersCacheKeyCustomKeyHost {
  /// Whether to use the resolved host in the cache key.
  final pulumi.Input<bool> resolved;

  /// Creates a new [GetRulesetRuleActionParametersCacheKeyCustomKeyHost].
  /// [resolved] Whether to use the resolved host in the cache key.
  const GetRulesetRuleActionParametersCacheKeyCustomKeyHost({
    required this.resolved,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resolved': resolved,
    };
  }

  factory GetRulesetRuleActionParametersCacheKeyCustomKeyHost.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersCacheKeyCustomKeyHost(
      resolved: pulumi.Input.fromValue(map['resolved'] as bool),
    );
  }
}
