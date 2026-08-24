// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerAdaptiveRouting {
  /// Extends zero-downtime failover of requests to healthy origins from alternate pools, when no healthy alternate exists in the same pool, according to the failover order defined by traffic and origin steering. When set false (the default) zero-downtime failover will only occur between origins within the same pool. See `sessionAffinityAttributes` for control over when sessions are broken or reassigned.
  final pulumi.Input<bool?>? failoverAcrossPools;

  /// Creates a new [LoadBalancerAdaptiveRouting].
  /// [failoverAcrossPools] Extends zero-downtime failover of requests to healthy origins from alternate pools, when no healthy alternate exists in the same pool, according to the failover order defined by traffic and origin steering. When set false (the default) zero-downtime failover will only occur between origins within the same pool. See `sessionAffinityAttributes` for control over when sessions are broken or reassigned.
  const LoadBalancerAdaptiveRouting({
    this.failoverAcrossPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverAcrossPools': ?failoverAcrossPools,
    };
  }

  factory LoadBalancerAdaptiveRouting.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAdaptiveRouting(
      failoverAcrossPools: (() { final guardedValue = map['failoverAcrossPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
