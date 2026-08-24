// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersCacheKeyCustomKeyHost {
  /// Whether to use the resolved host in the cache key.
  final pulumi.Input<bool?>? resolved;

  /// Creates a new [RulesetRuleActionParametersCacheKeyCustomKeyHost].
  /// [resolved] Whether to use the resolved host in the cache key.
  const RulesetRuleActionParametersCacheKeyCustomKeyHost({
    this.resolved,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resolved': ?resolved,
    };
  }

  factory RulesetRuleActionParametersCacheKeyCustomKeyHost.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersCacheKeyCustomKeyHost(
      resolved: (() { final guardedValue = map['resolved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
