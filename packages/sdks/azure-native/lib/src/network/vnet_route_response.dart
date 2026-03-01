// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_route_response.dart';
import 'static_routes_config_response.dart';
import 'sub_resource_response.dart';

/// List of routes that control routing from VirtualHub into a virtual network connection.
class VnetRouteResponse {
  /// The list of references to HubBgpConnection objects.
  final List<SubResourceResponse> bgpConnections;
  /// List of all Static Routes.
  final List<StaticRouteResponse>? staticRoutes;
  /// Configuration for static routes on this HubVnetConnection.
  final StaticRoutesConfigResponse? staticRoutesConfig;

  /// Creates a new [VnetRouteResponse].
  /// [bgpConnections] The list of references to HubBgpConnection objects.
  /// [staticRoutes] List of all Static Routes.
  /// [staticRoutesConfig] Configuration for static routes on this HubVnetConnection.
  VnetRouteResponse({
    required this.bgpConnections,
    this.staticRoutes,
    this.staticRoutesConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpConnections': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(bgpConnections, (value) => value.toMap()),
      'staticRoutes': ?staticRoutes == null ? null : pulumi.Input.encodeList<StaticRouteResponse, Map<String, dynamic>>(staticRoutes!, (value) => value.toMap()),
      'staticRoutesConfig': ?staticRoutesConfig == null ? null : staticRoutesConfig!.toMap(),
    };
  }

  factory VnetRouteResponse.fromMap(Map<String, dynamic> map) {
    return VnetRouteResponse(
      bgpConnections: pulumi.Input.decodeList<SubResourceResponse>(map['bgpConnections'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      staticRoutes: map['staticRoutes'] == null ? null : pulumi.Input.decodeList<StaticRouteResponse>(map['staticRoutes'], (value) => StaticRouteResponse.fromMap((value as Map).cast<String, dynamic>())),
      staticRoutesConfig: map['staticRoutesConfig'] == null ? null : StaticRoutesConfigResponse.fromMap((map['staticRoutesConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

