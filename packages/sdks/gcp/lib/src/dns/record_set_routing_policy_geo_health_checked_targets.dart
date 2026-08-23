// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_geo_health_checked_targets_internal_load_balancer.dart';

class RecordSetRoutingPolicyGeoHealthCheckedTargets {
  /// The list of external endpoint addresses to health check.
  final pulumi.Input<List<String>>? externalEndpoints;
  /// The list of internal load balancers to health check.
  /// Structure is documented below.
  final pulumi.Input<List<RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer>>? internalLoadBalancers;

  /// Creates a new [RecordSetRoutingPolicyGeoHealthCheckedTargets].
  /// [externalEndpoints] The list of external endpoint addresses to health check.
  /// [internalLoadBalancers] The list of internal load balancers to health check.
  const RecordSetRoutingPolicyGeoHealthCheckedTargets({
    this.externalEndpoints,
    this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalEndpoints': ?externalEndpoints,
      'internalLoadBalancers': ?pulumi.Input.mapOptionalInputValue<List<RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer>, List<Map<String, dynamic>>>(internalLoadBalancers, (value) => pulumi.Input.encodeList<RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecordSetRoutingPolicyGeoHealthCheckedTargets.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicyGeoHealthCheckedTargets(
      externalEndpoints: (() { final guardedValue = map['externalEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      internalLoadBalancers: (() { final guardedValue = map['internalLoadBalancers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer>(guardedValue, (value) => RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
