// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_load_balancer_target.dart';

/// HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response.
class RRSetRoutingPolicyHealthCheckTargets {
  final pulumi.Input<List<RRSetRoutingPolicyLoadBalancerTarget>>?
  internalLoadBalancers;

  /// Creates a new [RRSetRoutingPolicyHealthCheckTargets].
  /// [internalLoadBalancers] Optional.
  RRSetRoutingPolicyHealthCheckTargets({this.internalLoadBalancers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalLoadBalancers':
          ?pulumi.Input.mapOptionalInputValue<
            List<RRSetRoutingPolicyLoadBalancerTarget>,
            List<Map<String, dynamic>>
          >(
            internalLoadBalancers,
            (value) =>
                pulumi.Input.encodeList<
                  RRSetRoutingPolicyLoadBalancerTarget,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RRSetRoutingPolicyHealthCheckTargets.fromMap(
    Map<String, dynamic> map,
  ) {
    return RRSetRoutingPolicyHealthCheckTargets(
      internalLoadBalancers: (() {
        final guardedValue = map['internalLoadBalancers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RRSetRoutingPolicyLoadBalancerTarget>(
            guardedValue,
            (value) => RRSetRoutingPolicyLoadBalancerTarget.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
