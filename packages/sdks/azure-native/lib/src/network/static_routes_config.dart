// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for static routes on this HubVnetConnectionConfiguration for static routes on this HubVnetConnection.
class StaticRoutesConfig {
  /// Boolean indicating whether static routes on this connection are automatically propagate to route tables which this connection propagates to.
  final pulumi.Input<bool?>? propagateStaticRoutes;
  /// Parameter determining whether NVA in spoke vnet is bypassed for traffic with destination in spoke.
  final pulumi.Input<dynamic>? vnetLocalRouteOverrideCriteria;

  /// Creates a new [StaticRoutesConfig].
  /// [propagateStaticRoutes] Boolean indicating whether static routes on this connection are automatically propagate to route tables which this connection propagates to.
  /// [vnetLocalRouteOverrideCriteria] Parameter determining whether NVA in spoke vnet is bypassed for traffic with destination in spoke.
  const StaticRoutesConfig({
    this.propagateStaticRoutes,
    this.vnetLocalRouteOverrideCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propagateStaticRoutes': ?propagateStaticRoutes,
      'vnetLocalRouteOverrideCriteria': ?vnetLocalRouteOverrideCriteria,
    };
  }

  factory StaticRoutesConfig.fromMap(Map<String, dynamic> map) {
    return StaticRoutesConfig(
      propagateStaticRoutes: (() { final guardedValue = map['propagateStaticRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vnetLocalRouteOverrideCriteria: (() { final guardedValue = map['vnetLocalRouteOverrideCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
