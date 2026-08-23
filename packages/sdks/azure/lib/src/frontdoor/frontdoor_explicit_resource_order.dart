// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorExplicitResourceOrder {
  final pulumi.Input<List<String>>? backendPoolHealthProbeIds;
  final pulumi.Input<List<String>>? backendPoolIds;
  final pulumi.Input<List<String>>? backendPoolLoadBalancingIds;
  final pulumi.Input<List<String>>? frontendEndpointIds;
  final pulumi.Input<List<String>>? routingRuleIds;

  /// Creates a new [FrontdoorExplicitResourceOrder].
  /// [backendPoolHealthProbeIds] Optional.
  /// [backendPoolIds] Optional.
  /// [backendPoolLoadBalancingIds] Optional.
  /// [frontendEndpointIds] Optional.
  /// [routingRuleIds] Optional.
  const FrontdoorExplicitResourceOrder({
    this.backendPoolHealthProbeIds,
    this.backendPoolIds,
    this.backendPoolLoadBalancingIds,
    this.frontendEndpointIds,
    this.routingRuleIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPoolHealthProbeIds': ?backendPoolHealthProbeIds,
      'backendPoolIds': ?backendPoolIds,
      'backendPoolLoadBalancingIds': ?backendPoolLoadBalancingIds,
      'frontendEndpointIds': ?frontendEndpointIds,
      'routingRuleIds': ?routingRuleIds,
    };
  }

  factory FrontdoorExplicitResourceOrder.fromMap(Map<String, dynamic> map) {
    return FrontdoorExplicitResourceOrder(
      backendPoolHealthProbeIds: (() { final guardedValue = map['backendPoolHealthProbeIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backendPoolIds: (() { final guardedValue = map['backendPoolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backendPoolLoadBalancingIds: (() { final guardedValue = map['backendPoolLoadBalancingIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      frontendEndpointIds: (() { final guardedValue = map['frontendEndpointIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      routingRuleIds: (() { final guardedValue = map['routingRuleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
