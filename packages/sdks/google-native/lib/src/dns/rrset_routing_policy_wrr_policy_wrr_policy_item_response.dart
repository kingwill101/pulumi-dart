// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_health_check_targets_response.dart';

/// A routing block which contains the routing information for one WRR item.
class RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse {
  /// Endpoints that are health checked before making the routing decision. The unhealthy endpoints are omitted from the result. If all endpoints within a bucket are unhealthy, we choose a different bucket (sampled with respect to its weight) for responding. If DNSSEC is enabled for this zone, only one of rrdata or health_checked_targets can be set.
  final pulumi.Input<RRSetRoutingPolicyHealthCheckTargetsResponse> healthCheckedTargets;
  final pulumi.Input<String> kind;
  final pulumi.Input<List<String>> rrdatas;
  /// DNSSEC generated signatures for all the rrdata within this item. Note that if health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  final pulumi.Input<List<String>> signatureRrdatas;
  /// The weight corresponding to this WrrPolicyItem object. When multiple WrrPolicyItem objects are configured, the probability of returning an WrrPolicyItem object's data is proportional to its weight relative to the sum of weights configured for all items. This weight must be non-negative.
  final pulumi.Input<double> weight;

  /// Creates a new [RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse].
  /// [healthCheckedTargets] Endpoints that are health checked before making the routing decision. The unhealthy endpoints are omitted from the result. If all endpoints within a bucket are unhealthy, we choose a different bucket (sampled with respect to its weight) for responding. If DNSSEC is enabled for this zone, only one of rrdata or health_checked_targets can be set.
  /// [kind] Required.
  /// [rrdatas] Required.
  /// [signatureRrdatas] DNSSEC generated signatures for all the rrdata within this item. Note that if health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  /// [weight] The weight corresponding to this WrrPolicyItem object. When multiple WrrPolicyItem objects are configured, the probability of returning an WrrPolicyItem object's data is proportional to its weight relative to the sum of weights configured for all items. This weight must be non-negative.
  const RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse({
    required this.healthCheckedTargets,
    required this.kind,
    required this.rrdatas,
    required this.signatureRrdatas,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckedTargets': pulumi.Input.mapInputValue<RRSetRoutingPolicyHealthCheckTargetsResponse, Map<String, dynamic>>(healthCheckedTargets, (value) => value.toMap()),
      'kind': kind,
      'rrdatas': rrdatas,
      'signatureRrdatas': signatureRrdatas,
      'weight': weight,
    };
  }

  factory RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse(
      healthCheckedTargets: pulumi.Input.fromValue(RRSetRoutingPolicyHealthCheckTargetsResponse.fromMap((map['healthCheckedTargets']! as Map).cast<String, dynamic>())),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      rrdatas: pulumi.Input.fromValue((map['rrdatas'] as List).cast<String>()),
      signatureRrdatas: pulumi.Input.fromValue((map['signatureRrdatas'] as List).cast<String>()),
      weight: pulumi.Input.fromValue(map['weight'] as double),
    );
  }
}

