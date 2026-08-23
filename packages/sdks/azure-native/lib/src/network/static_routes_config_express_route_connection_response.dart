// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for static routes on this HubVnetConnectionConfiguration for static routes on this HubVnetConnection.
class StaticRoutesConfigExpressRouteConnectionResponse {
  /// Boolean indicating whether static routes on this connection are automatically propagate to route tables which this connection propagates to.
  final pulumi.Input<bool> propagateStaticRoutes;
  /// Parameter determining whether NVA in spoke vnet is bypassed for traffic with destination in spoke.
  final pulumi.Input<String>? vnetLocalRouteOverrideCriteria;

  /// Creates a new [StaticRoutesConfigExpressRouteConnectionResponse].
  /// [propagateStaticRoutes] Boolean indicating whether static routes on this connection are automatically propagate to route tables which this connection propagates to.
  /// [vnetLocalRouteOverrideCriteria] Parameter determining whether NVA in spoke vnet is bypassed for traffic with destination in spoke.
  const StaticRoutesConfigExpressRouteConnectionResponse({
    required this.propagateStaticRoutes,
    this.vnetLocalRouteOverrideCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propagateStaticRoutes': propagateStaticRoutes,
      'vnetLocalRouteOverrideCriteria': ?vnetLocalRouteOverrideCriteria,
    };
  }

  factory StaticRoutesConfigExpressRouteConnectionResponse.fromMap(Map<String, dynamic> map) {
    return StaticRoutesConfigExpressRouteConnectionResponse(
      propagateStaticRoutes: pulumi.Input.fromValue(map['propagateStaticRoutes'] as bool),
      vnetLocalRouteOverrideCriteria: (() { final guardedValue = map['vnetLocalRouteOverrideCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
