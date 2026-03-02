// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_wrr_health_checked_targets_internal_load_balancer.dart';

class RecordSetRoutingPolicyWrrHealthCheckedTargets {
  /// The list of external endpoint addresses to health check.
  final pulumi.Input<List<String>>? externalEndpoints;
  /// The list of internal load balancers to health check.
  /// Structure is documented below.
  final pulumi.Input<List<RecordSetRoutingPolicyWrrHealthCheckedTargetsInternalLoadBalancer>>? internalLoadBalancers;

  /// Creates a new [RecordSetRoutingPolicyWrrHealthCheckedTargets].
  /// [externalEndpoints] The list of external endpoint addresses to health check.
  /// [internalLoadBalancers] The list of internal load balancers to health check.
  RecordSetRoutingPolicyWrrHealthCheckedTargets({
    this.externalEndpoints,
    this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalEndpoints': ?externalEndpoints,
      'internalLoadBalancers': ?pulumi.Input.mapOptionalInputValue<List<RecordSetRoutingPolicyWrrHealthCheckedTargetsInternalLoadBalancer>, List<Map<String, dynamic>>>(internalLoadBalancers, (value) => pulumi.Input.encodeList<RecordSetRoutingPolicyWrrHealthCheckedTargetsInternalLoadBalancer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecordSetRoutingPolicyWrrHealthCheckedTargets.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicyWrrHealthCheckedTargets(
      externalEndpoints: map['externalEndpoints'] == null ? null : ((map['externalEndpoints'] as List).cast<String>()).input(),
      internalLoadBalancers: map['internalLoadBalancers'] == null ? null : (pulumi.Input.decodeList<RecordSetRoutingPolicyWrrHealthCheckedTargetsInternalLoadBalancer>(map['internalLoadBalancers'], (value) => RecordSetRoutingPolicyWrrHealthCheckedTargetsInternalLoadBalancer.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

