// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_hub_connection_routing_propagated_route_table.dart';
import 'get_virtual_hub_connection_routing_static_vnet_route.dart';

class GetVirtualHubConnectionRouting {
  /// The ID of the route table associated with this Virtual Hub connection.
  final pulumi.Input<String> associatedRouteTableId;
  /// The ID of the Route Map associated with this Routing Configuration for inbound learned routes.
  final pulumi.Input<String> inboundRouteMapId;
  /// The ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
  final pulumi.Input<String> outboundRouteMapId;
  /// A `propagatedRouteTable` block as defined below.
  final pulumi.Input<List<GetVirtualHubConnectionRoutingPropagatedRouteTable>> propagatedRouteTables;
  /// The static VNet local route override criteria that is used to determine whether NVA in spoke VNet is bypassed for traffic with destination in spoke VNet.
  final pulumi.Input<String> staticVnetLocalRouteOverrideCriteria;
  /// Whether the static routes should be propagated to the Virtual Hub or not.
  final pulumi.Input<bool> staticVnetPropagateStaticRoutesEnabled;
  /// A `staticVnetRoute` block as defined below.
  final pulumi.Input<List<GetVirtualHubConnectionRoutingStaticVnetRoute>> staticVnetRoutes;

  /// Creates a new [GetVirtualHubConnectionRouting].
  /// [associatedRouteTableId] The ID of the route table associated with this Virtual Hub connection.
  /// [inboundRouteMapId] The ID of the Route Map associated with this Routing Configuration for inbound learned routes.
  /// [outboundRouteMapId] The ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
  /// [propagatedRouteTables] A `propagatedRouteTable` block as defined below.
  /// [staticVnetLocalRouteOverrideCriteria] The static VNet local route override criteria that is used to determine whether NVA in spoke VNet is bypassed for traffic with destination in spoke VNet.
  /// [staticVnetPropagateStaticRoutesEnabled] Whether the static routes should be propagated to the Virtual Hub or not.
  /// [staticVnetRoutes] A `staticVnetRoute` block as defined below.
  const GetVirtualHubConnectionRouting({
    required this.associatedRouteTableId,
    required this.inboundRouteMapId,
    required this.outboundRouteMapId,
    required this.propagatedRouteTables,
    required this.staticVnetLocalRouteOverrideCriteria,
    required this.staticVnetPropagateStaticRoutesEnabled,
    required this.staticVnetRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRouteTableId': associatedRouteTableId,
      'inboundRouteMapId': inboundRouteMapId,
      'outboundRouteMapId': outboundRouteMapId,
      'propagatedRouteTables': pulumi.Input.mapInputValue<List<GetVirtualHubConnectionRoutingPropagatedRouteTable>, List<Map<String, dynamic>>>(propagatedRouteTables, (value) => pulumi.Input.encodeList<GetVirtualHubConnectionRoutingPropagatedRouteTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'staticVnetLocalRouteOverrideCriteria': staticVnetLocalRouteOverrideCriteria,
      'staticVnetPropagateStaticRoutesEnabled': staticVnetPropagateStaticRoutesEnabled,
      'staticVnetRoutes': pulumi.Input.mapInputValue<List<GetVirtualHubConnectionRoutingStaticVnetRoute>, List<Map<String, dynamic>>>(staticVnetRoutes, (value) => pulumi.Input.encodeList<GetVirtualHubConnectionRoutingStaticVnetRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualHubConnectionRouting.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubConnectionRouting(
      associatedRouteTableId: pulumi.Input.fromValue(map['associatedRouteTableId'] as String),
      inboundRouteMapId: pulumi.Input.fromValue(map['inboundRouteMapId'] as String),
      outboundRouteMapId: pulumi.Input.fromValue(map['outboundRouteMapId'] as String),
      propagatedRouteTables: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualHubConnectionRoutingPropagatedRouteTable>(map['propagatedRouteTables']!, (value) => GetVirtualHubConnectionRoutingPropagatedRouteTable.fromMap((value as Map).cast<String, dynamic>()))),
      staticVnetLocalRouteOverrideCriteria: pulumi.Input.fromValue(map['staticVnetLocalRouteOverrideCriteria'] as String),
      staticVnetPropagateStaticRoutesEnabled: pulumi.Input.fromValue(map['staticVnetPropagateStaticRoutesEnabled'] as bool),
      staticVnetRoutes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualHubConnectionRoutingStaticVnetRoute>(map['staticVnetRoutes']!, (value) => GetVirtualHubConnectionRoutingStaticVnetRoute.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
