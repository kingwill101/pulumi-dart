// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_route_response.dart';
import 'static_routes_config_network_virtual_appliance_connection_response.dart';
import 'sub_resource_response.dart';

/// List of routes that control routing from VirtualHub into a virtual network connection.
class VnetRouteNetworkVirtualApplianceConnectionResponse {
  /// The list of references to HubBgpConnection objects.
  final pulumi.Input<List<SubResourceResponse>> bgpConnections;
  /// List of all Static Routes.
  final pulumi.Input<List<StaticRouteResponse>?>? staticRoutes;
  /// Configuration for static routes on this HubVnetConnection.
  final pulumi.Input<StaticRoutesConfigNetworkVirtualApplianceConnectionResponse?>? staticRoutesConfig;

  /// Creates a new [VnetRouteNetworkVirtualApplianceConnectionResponse].
  /// [bgpConnections] The list of references to HubBgpConnection objects.
  /// [staticRoutes] List of all Static Routes.
  /// [staticRoutesConfig] Configuration for static routes on this HubVnetConnection.
  const VnetRouteNetworkVirtualApplianceConnectionResponse({
    required this.bgpConnections,
    this.staticRoutes,
    this.staticRoutesConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpConnections': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(bgpConnections, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'staticRoutes': ?pulumi.Input.mapOptionalInputValue<List<StaticRouteResponse>, List<Map<String, dynamic>>>(staticRoutes, (value) => pulumi.Input.encodeList<StaticRouteResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'staticRoutesConfig': ?pulumi.Input.mapOptionalInputValue<StaticRoutesConfigNetworkVirtualApplianceConnectionResponse, Map<String, dynamic>>(staticRoutesConfig, (value) => value.toMap()),
    };
  }

  factory VnetRouteNetworkVirtualApplianceConnectionResponse.fromMap(Map<String, dynamic> map) {
    return VnetRouteNetworkVirtualApplianceConnectionResponse(
      bgpConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['bgpConnections']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      staticRoutes: (() { final guardedValue = map['staticRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StaticRouteResponse>(guardedValue, (value) => StaticRouteResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      staticRoutesConfig: (() { final guardedValue = map['staticRoutesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StaticRoutesConfigNetworkVirtualApplianceConnectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
