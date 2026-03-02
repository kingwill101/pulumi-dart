// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_route.dart';
import 'static_routes_config.dart';

/// List of routes that control routing from VirtualHub into a virtual network connection.
class VnetRoute {
  /// List of all Static Routes.
  final pulumi.Input<List<StaticRoute>>? staticRoutes;
  /// Configuration for static routes on this HubVnetConnection.
  final pulumi.Input<StaticRoutesConfig>? staticRoutesConfig;

  /// Creates a new [VnetRoute].
  /// [staticRoutes] List of all Static Routes.
  /// [staticRoutesConfig] Configuration for static routes on this HubVnetConnection.
  VnetRoute({
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
      staticRoutes: map['staticRoutes'] == null ? null : (pulumi.Input.decodeList<StaticRoute>(map['staticRoutes']!, (value) => StaticRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      staticRoutesConfig: map['staticRoutesConfig'] == null ? null : (StaticRoutesConfig.fromMap((map['staticRoutesConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

