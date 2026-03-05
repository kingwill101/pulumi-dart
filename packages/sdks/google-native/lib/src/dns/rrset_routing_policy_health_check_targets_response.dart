// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_load_balancer_target_response.dart';

/// HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response.
class RRSetRoutingPolicyHealthCheckTargetsResponse {
  final pulumi.Input<List<RRSetRoutingPolicyLoadBalancerTargetResponse>> internalLoadBalancers;

  /// Creates a new [RRSetRoutingPolicyHealthCheckTargetsResponse].
  /// [internalLoadBalancers] Required.
  RRSetRoutingPolicyHealthCheckTargetsResponse({
    required this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalLoadBalancers': pulumi.Input.mapInputValue<List<RRSetRoutingPolicyLoadBalancerTargetResponse>, List<Map<String, dynamic>>>(internalLoadBalancers, (value) => pulumi.Input.encodeList<RRSetRoutingPolicyLoadBalancerTargetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RRSetRoutingPolicyHealthCheckTargetsResponse.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyHealthCheckTargetsResponse(
      internalLoadBalancers: pulumi.Input.fromValue(pulumi.Input.decodeList<RRSetRoutingPolicyLoadBalancerTargetResponse>(map['internalLoadBalancers']!, (value) => RRSetRoutingPolicyLoadBalancerTargetResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

