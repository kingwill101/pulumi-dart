// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'propagated_route_table_response.dart';
import 'sub_resource_response.dart';
import 'vnet_route_response.dart';

/// Routing Configuration indicating the associated and propagated route tables for this connection.
class RoutingConfigurationResponse {
  /// The resource id RouteTable associated with this RoutingConfiguration.
  final pulumi.Input<SubResourceResponse>? associatedRouteTable;
  /// The resource id of the RouteMap associated with this RoutingConfiguration for inbound learned routes.
  final pulumi.Input<SubResourceResponse>? inboundRouteMap;
  /// The resource id of theRouteMap associated with this RoutingConfiguration for outbound advertised routes.
  final pulumi.Input<SubResourceResponse>? outboundRouteMap;
  /// The list of RouteTables to advertise the routes to.
  final pulumi.Input<PropagatedRouteTableResponse>? propagatedRouteTables;
  /// List of routes that control routing from VirtualHub into a virtual network connection.
  final pulumi.Input<VnetRouteResponse>? vnetRoutes;

  /// Creates a new [RoutingConfigurationResponse].
  /// [associatedRouteTable] The resource id RouteTable associated with this RoutingConfiguration.
  /// [inboundRouteMap] The resource id of the RouteMap associated with this RoutingConfiguration for inbound learned routes.
  /// [outboundRouteMap] The resource id of theRouteMap associated with this RoutingConfiguration for outbound advertised routes.
  /// [propagatedRouteTables] The list of RouteTables to advertise the routes to.
  /// [vnetRoutes] List of routes that control routing from VirtualHub into a virtual network connection.
  RoutingConfigurationResponse({
    this.associatedRouteTable,
    this.inboundRouteMap,
    this.outboundRouteMap,
    this.propagatedRouteTables,
    this.vnetRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRouteTable': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(associatedRouteTable, (value) => value.toMap()),
      'inboundRouteMap': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(inboundRouteMap, (value) => value.toMap()),
      'outboundRouteMap': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(outboundRouteMap, (value) => value.toMap()),
      'propagatedRouteTables': ?pulumi.Input.mapOptionalInputValue<PropagatedRouteTableResponse, Map<String, dynamic>>(propagatedRouteTables, (value) => value.toMap()),
      'vnetRoutes': ?pulumi.Input.mapOptionalInputValue<VnetRouteResponse, Map<String, dynamic>>(vnetRoutes, (value) => value.toMap()),
    };
  }

  factory RoutingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return RoutingConfigurationResponse(
      associatedRouteTable: map['associatedRouteTable'] == null ? null : (SubResourceResponse.fromMap((map['associatedRouteTable'] as Map).cast<String, dynamic>())).input(),
      inboundRouteMap: map['inboundRouteMap'] == null ? null : (SubResourceResponse.fromMap((map['inboundRouteMap'] as Map).cast<String, dynamic>())).input(),
      outboundRouteMap: map['outboundRouteMap'] == null ? null : (SubResourceResponse.fromMap((map['outboundRouteMap'] as Map).cast<String, dynamic>())).input(),
      propagatedRouteTables: map['propagatedRouteTables'] == null ? null : (PropagatedRouteTableResponse.fromMap((map['propagatedRouteTables'] as Map).cast<String, dynamic>())).input(),
      vnetRoutes: map['vnetRoutes'] == null ? null : (VnetRouteResponse.fromMap((map['vnetRoutes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

