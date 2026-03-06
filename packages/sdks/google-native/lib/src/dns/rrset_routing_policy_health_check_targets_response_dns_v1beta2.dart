// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_load_balancer_target_response_dns_v1beta2.dart';

/// HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response.
class RRSetRoutingPolicyHealthCheckTargetsResponseDnsV1beta2 {
  final pulumi.Input<List<RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2>> internalLoadBalancers;

  /// Creates a new [RRSetRoutingPolicyHealthCheckTargetsResponseDnsV1beta2].
  /// [internalLoadBalancers] Required.
  const RRSetRoutingPolicyHealthCheckTargetsResponseDnsV1beta2({
    required this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalLoadBalancers': pulumi.Input.mapInputValue<List<RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2>, List<Map<String, dynamic>>>(internalLoadBalancers, (value) => pulumi.Input.encodeList<RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RRSetRoutingPolicyHealthCheckTargetsResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyHealthCheckTargetsResponseDnsV1beta2(
      internalLoadBalancers: pulumi.Input.fromValue(pulumi.Input.decodeList<RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2>(map['internalLoadBalancers']!, (value) => RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

