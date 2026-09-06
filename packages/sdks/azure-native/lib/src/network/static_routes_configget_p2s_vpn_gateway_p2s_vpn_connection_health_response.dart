// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for static routes on this HubVnetConnectionConfiguration for static routes on this HubVnetConnection.
class StaticRoutesConfiggetP2sVpnGatewayP2sVpnConnectionHealthResponse {
  /// Boolean indicating whether static routes on this connection are automatically propagate to route tables which this connection propagates to.
  final pulumi.Input<bool> propagateStaticRoutes;
  /// Parameter determining whether NVA in spoke vnet is bypassed for traffic with destination in spoke.
  final pulumi.Input<String?>? vnetLocalRouteOverrideCriteria;

  /// Creates a new [StaticRoutesConfiggetP2sVpnGatewayP2sVpnConnectionHealthResponse].
  /// [propagateStaticRoutes] Boolean indicating whether static routes on this connection are automatically propagate to route tables which this connection propagates to.
  /// [vnetLocalRouteOverrideCriteria] Parameter determining whether NVA in spoke vnet is bypassed for traffic with destination in spoke.
  const StaticRoutesConfiggetP2sVpnGatewayP2sVpnConnectionHealthResponse({
    required this.propagateStaticRoutes,
    this.vnetLocalRouteOverrideCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propagateStaticRoutes': propagateStaticRoutes,
      'vnetLocalRouteOverrideCriteria': ?vnetLocalRouteOverrideCriteria,
    };
  }

  factory StaticRoutesConfiggetP2sVpnGatewayP2sVpnConnectionHealthResponse.fromMap(Map<String, dynamic> map) {
    return StaticRoutesConfiggetP2sVpnGatewayP2sVpnConnectionHealthResponse(
      propagateStaticRoutes: pulumi.Input.fromValue(map['propagateStaticRoutes'] as bool),
      vnetLocalRouteOverrideCriteria: (() { final guardedValue = map['vnetLocalRouteOverrideCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
