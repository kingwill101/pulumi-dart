// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_connection_routing_propagated_route_table.dart';
import 'virtual_hub_connection_routing_static_vnet_route.dart';

class VirtualHubConnectionRouting {
  /// The ID of the route table associated with this Virtual Hub connection.
  final pulumi.Input<String>? associatedRouteTableId;
  /// The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes.
  final pulumi.Input<String>? inboundRouteMapId;
  /// The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
  final pulumi.Input<String>? outboundRouteMapId;
  /// A `propagated_route_table` block as defined below.
  final pulumi.Input<VirtualHubConnectionRoutingPropagatedRouteTable>? propagatedRouteTable;
  /// The static VNet local route override criteria that is used to determine whether NVA in spoke VNet is bypassed for traffic with destination in spoke VNet. Possible values are `Contains` and `Equal`. Defaults to `Contains`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? staticVnetLocalRouteOverrideCriteria;
  /// Whether the static routes should be propagated to the Virtual Hub. Defaults to `true`.
  final pulumi.Input<bool>? staticVnetPropagateStaticRoutesEnabled;
  /// A `static_vnet_route` block as defined below.
  final pulumi.Input<List<VirtualHubConnectionRoutingStaticVnetRoute>>? staticVnetRoutes;

  /// Creates a new [VirtualHubConnectionRouting].
  /// [associatedRouteTableId] The ID of the route table associated with this Virtual Hub connection.
  /// [inboundRouteMapId] The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes.
  /// [outboundRouteMapId] The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
  /// [propagatedRouteTable] A `propagated_route_table` block as defined below.
  /// [staticVnetLocalRouteOverrideCriteria] The static VNet local route override criteria that is used to determine whether NVA in spoke VNet is bypassed for traffic with destination in spoke VNet. Possible values are `Contains` and `Equal`. Defaults to `Contains`. Changing this forces a new resource to be created.
  /// [staticVnetPropagateStaticRoutesEnabled] Whether the static routes should be propagated to the Virtual Hub. Defaults to `true`.
  /// [staticVnetRoutes] A `static_vnet_route` block as defined below.
  VirtualHubConnectionRouting({
    this.associatedRouteTableId,
    this.inboundRouteMapId,
    this.outboundRouteMapId,
    this.propagatedRouteTable,
    this.staticVnetLocalRouteOverrideCriteria,
    this.staticVnetPropagateStaticRoutesEnabled,
    this.staticVnetRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRouteTableId': ?associatedRouteTableId,
      'inboundRouteMapId': ?inboundRouteMapId,
      'outboundRouteMapId': ?outboundRouteMapId,
      'propagatedRouteTable': ?pulumi.Input.mapOptionalInputValue<VirtualHubConnectionRoutingPropagatedRouteTable, Map<String, dynamic>>(propagatedRouteTable, (value) => value.toMap()),
      'staticVnetLocalRouteOverrideCriteria': ?staticVnetLocalRouteOverrideCriteria,
      'staticVnetPropagateStaticRoutesEnabled': ?staticVnetPropagateStaticRoutesEnabled,
      'staticVnetRoutes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubConnectionRoutingStaticVnetRoute>, List<Map<String, dynamic>>>(staticVnetRoutes, (value) => pulumi.Input.encodeList<VirtualHubConnectionRoutingStaticVnetRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualHubConnectionRouting.fromMap(Map<String, dynamic> map) {
    return VirtualHubConnectionRouting(
      associatedRouteTableId: map['associatedRouteTableId'] == null ? null : (map['associatedRouteTableId']! as String).input(),
      inboundRouteMapId: map['inboundRouteMapId'] == null ? null : (map['inboundRouteMapId']! as String).input(),
      outboundRouteMapId: map['outboundRouteMapId'] == null ? null : (map['outboundRouteMapId']! as String).input(),
      propagatedRouteTable: map['propagatedRouteTable'] == null ? null : (VirtualHubConnectionRoutingPropagatedRouteTable.fromMap((map['propagatedRouteTable']! as Map).cast<String, dynamic>())).input(),
      staticVnetLocalRouteOverrideCriteria: map['staticVnetLocalRouteOverrideCriteria'] == null ? null : (map['staticVnetLocalRouteOverrideCriteria']! as String).input(),
      staticVnetPropagateStaticRoutesEnabled: map['staticVnetPropagateStaticRoutesEnabled'] == null ? null : (map['staticVnetPropagateStaticRoutesEnabled']! as bool).input(),
      staticVnetRoutes: map['staticVnetRoutes'] == null ? null : (pulumi.Input.decodeList<VirtualHubConnectionRoutingStaticVnetRoute>(map['staticVnetRoutes']!, (value) => VirtualHubConnectionRoutingStaticVnetRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

