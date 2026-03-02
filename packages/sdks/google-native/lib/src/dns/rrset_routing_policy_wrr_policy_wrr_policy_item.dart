// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_health_check_targets.dart';

/// A routing block which contains the routing information for one WRR item.
class RRSetRoutingPolicyWrrPolicyWrrPolicyItem {
  /// Endpoints that are health checked before making the routing decision. The unhealthy endpoints are omitted from the result. If all endpoints within a bucket are unhealthy, we choose a different bucket (sampled with respect to its weight) for responding. If DNSSEC is enabled for this zone, only one of rrdata or health_checked_targets can be set.
  final pulumi.Input<RRSetRoutingPolicyHealthCheckTargets>? healthCheckedTargets;
  final pulumi.Input<String>? kind;
  final pulumi.Input<List<String>>? rrdatas;
  /// DNSSEC generated signatures for all the rrdata within this item. Note that if health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  final pulumi.Input<List<String>>? signatureRrdatas;
  /// The weight corresponding to this WrrPolicyItem object. When multiple WrrPolicyItem objects are configured, the probability of returning an WrrPolicyItem object's data is proportional to its weight relative to the sum of weights configured for all items. This weight must be non-negative.
  final pulumi.Input<double>? weight;

  /// Creates a new [RRSetRoutingPolicyWrrPolicyWrrPolicyItem].
  /// [healthCheckedTargets] Endpoints that are health checked before making the routing decision. The unhealthy endpoints are omitted from the result. If all endpoints within a bucket are unhealthy, we choose a different bucket (sampled with respect to its weight) for responding. If DNSSEC is enabled for this zone, only one of rrdata or health_checked_targets can be set.
  /// [kind] Optional.
  /// [rrdatas] Optional.
  /// [signatureRrdatas] DNSSEC generated signatures for all the rrdata within this item. Note that if health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  /// [weight] The weight corresponding to this WrrPolicyItem object. When multiple WrrPolicyItem objects are configured, the probability of returning an WrrPolicyItem object's data is proportional to its weight relative to the sum of weights configured for all items. This weight must be non-negative.
  RRSetRoutingPolicyWrrPolicyWrrPolicyItem({
    this.healthCheckedTargets,
    this.kind,
    this.rrdatas,
    this.signatureRrdatas,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckedTargets': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyHealthCheckTargets, Map<String, dynamic>>(healthCheckedTargets, (value) => value.toMap()),
      'kind': ?kind,
      'rrdatas': ?rrdatas,
      'signatureRrdatas': ?signatureRrdatas,
      'weight': ?weight,
    };
  }

  factory RRSetRoutingPolicyWrrPolicyWrrPolicyItem.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicyWrrPolicyItem(
      healthCheckedTargets: map['healthCheckedTargets'] == null ? null : (RRSetRoutingPolicyHealthCheckTargets.fromMap((map['healthCheckedTargets'] as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      rrdatas: map['rrdatas'] == null ? null : ((map['rrdatas'] as List).cast<String>()).input(),
      signatureRrdatas: map['signatureRrdatas'] == null ? null : ((map['signatureRrdatas'] as List).cast<String>()).input(),
      weight: map['weight'] == null ? null : (map['weight'] as double).input(),
    );
  }
}

