// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersResultRuleOverridesAdaptiveRouting {
  /// Extends zero-downtime failover of requests to healthy origins from alternate pools, when no healthy alternate exists in the same pool, according to the failover order defined by traffic and origin steering. When set false (the default) zero-downtime failover will only occur between origins within the same pool. See `sessionAffinityAttributes` for control over when sessions are broken or reassigned.
  final pulumi.Input<bool> failoverAcrossPools;

  /// Creates a new [GetLoadBalancersResultRuleOverridesAdaptiveRouting].
  /// [failoverAcrossPools] Extends zero-downtime failover of requests to healthy origins from alternate pools, when no healthy alternate exists in the same pool, according to the failover order defined by traffic and origin steering. When set false (the default) zero-downtime failover will only occur between origins within the same pool. See `sessionAffinityAttributes` for control over when sessions are broken or reassigned.
  const GetLoadBalancersResultRuleOverridesAdaptiveRouting({
    required this.failoverAcrossPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverAcrossPools': failoverAcrossPools,
    };
  }

  factory GetLoadBalancersResultRuleOverridesAdaptiveRouting.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResultRuleOverridesAdaptiveRouting(
      failoverAcrossPools: pulumi.Input.fromValue(map['failoverAcrossPools'] as bool),
    );
  }
}
