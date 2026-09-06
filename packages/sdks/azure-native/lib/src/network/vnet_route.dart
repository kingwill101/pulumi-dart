// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_route.dart';
import 'static_routes_config.dart';

/// List of routes that control routing from VirtualHub into a virtual network connection.
class VnetRoute {
  /// List of all Static Routes.
  final pulumi.Input<List<StaticRoute>?>? staticRoutes;
  /// Configuration for static routes on this HubVnetConnection.
  final pulumi.Input<StaticRoutesConfig?>? staticRoutesConfig;

  /// Creates a new [VnetRoute].
  /// [staticRoutes] List of all Static Routes.
  /// [staticRoutesConfig] Configuration for static routes on this HubVnetConnection.
  const VnetRoute({
    this.staticRoutes,
    this.staticRoutesConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'staticRoutes': ?pulumi.Input.mapOptionalInputValue<List<StaticRoute>, List<Map<String, dynamic>>>(staticRoutes, (value) => pulumi.Input.encodeList<StaticRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'staticRoutesConfig': ?pulumi.Input.mapOptionalInputValue<StaticRoutesConfig, Map<String, dynamic>>(staticRoutesConfig, (value) => value.toMap()),
    };
  }

  factory VnetRoute.fromMap(Map<String, dynamic> map) {
    return VnetRoute(
      staticRoutes: (() { final guardedValue = map['staticRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StaticRoute>(guardedValue, (value) => StaticRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      staticRoutesConfig: (() { final guardedValue = map['staticRoutesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StaticRoutesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
