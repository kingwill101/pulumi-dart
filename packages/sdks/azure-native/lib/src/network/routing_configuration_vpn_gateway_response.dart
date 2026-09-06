// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'propagated_route_table_response.dart';
import 'sub_resource_response.dart';
import 'vnet_route_vpn_gateway_response.dart';

/// Routing Configuration indicating the associated and propagated route tables for this connection.
class RoutingConfigurationVpnGatewayResponse {
  /// The resource id RouteTable associated with this RoutingConfiguration.
  final pulumi.Input<SubResourceResponse?>? associatedRouteTable;
  /// The resource id of the RouteMap associated with this RoutingConfiguration for inbound learned routes.
  final pulumi.Input<SubResourceResponse?>? inboundRouteMap;
  /// The resource id of theRouteMap associated with this RoutingConfiguration for outbound advertised routes.
  final pulumi.Input<SubResourceResponse?>? outboundRouteMap;
  /// The list of RouteTables to advertise the routes to.
  final pulumi.Input<PropagatedRouteTableResponse?>? propagatedRouteTables;
  /// List of routes that control routing from VirtualHub into a virtual network connection.
  final pulumi.Input<VnetRouteVpnGatewayResponse?>? vnetRoutes;

  /// Creates a new [RoutingConfigurationVpnGatewayResponse].
  /// [associatedRouteTable] The resource id RouteTable associated with this RoutingConfiguration.
  /// [inboundRouteMap] The resource id of the RouteMap associated with this RoutingConfiguration for inbound learned routes.
  /// [outboundRouteMap] The resource id of theRouteMap associated with this RoutingConfiguration for outbound advertised routes.
  /// [propagatedRouteTables] The list of RouteTables to advertise the routes to.
  /// [vnetRoutes] List of routes that control routing from VirtualHub into a virtual network connection.
  const RoutingConfigurationVpnGatewayResponse({
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
      'vnetRoutes': ?pulumi.Input.mapOptionalInputValue<VnetRouteVpnGatewayResponse, Map<String, dynamic>>(vnetRoutes, (value) => value.toMap()),
    };
  }

  factory RoutingConfigurationVpnGatewayResponse.fromMap(Map<String, dynamic> map) {
    return RoutingConfigurationVpnGatewayResponse(
      associatedRouteTable: (() { final guardedValue = map['associatedRouteTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inboundRouteMap: (() { final guardedValue = map['inboundRouteMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outboundRouteMap: (() { final guardedValue = map['outboundRouteMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      propagatedRouteTables: (() { final guardedValue = map['propagatedRouteTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PropagatedRouteTableResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vnetRoutes: (() { final guardedValue = map['vnetRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VnetRouteVpnGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
