// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'propagated_route_table.dart';
import 'sub_resource.dart';
import 'vnet_route.dart';

/// Routing Configuration indicating the associated and propagated route tables for this connection.
class RoutingConfiguration {
  /// The resource id RouteTable associated with this RoutingConfiguration.
  final pulumi.Input<SubResource>? associatedRouteTable;
  /// The resource id of the RouteMap associated with this RoutingConfiguration for inbound learned routes.
  final pulumi.Input<SubResource>? inboundRouteMap;
  /// The resource id of theRouteMap associated with this RoutingConfiguration for outbound advertised routes.
  final pulumi.Input<SubResource>? outboundRouteMap;
  /// The list of RouteTables to advertise the routes to.
  final pulumi.Input<PropagatedRouteTable>? propagatedRouteTables;
  /// List of routes that control routing from VirtualHub into a virtual network connection.
  final pulumi.Input<VnetRoute>? vnetRoutes;

  /// Creates a new [RoutingConfiguration].
  /// [associatedRouteTable] The resource id RouteTable associated with this RoutingConfiguration.
  /// [inboundRouteMap] The resource id of the RouteMap associated with this RoutingConfiguration for inbound learned routes.
  /// [outboundRouteMap] The resource id of theRouteMap associated with this RoutingConfiguration for outbound advertised routes.
  /// [propagatedRouteTables] The list of RouteTables to advertise the routes to.
  /// [vnetRoutes] List of routes that control routing from VirtualHub into a virtual network connection.
  RoutingConfiguration({
    this.associatedRouteTable,
    this.inboundRouteMap,
    this.outboundRouteMap,
    this.propagatedRouteTables,
    this.vnetRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRouteTable': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(associatedRouteTable, (value) => value.toMap()),
      'inboundRouteMap': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(inboundRouteMap, (value) => value.toMap()),
      'outboundRouteMap': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(outboundRouteMap, (value) => value.toMap()),
      'propagatedRouteTables': ?pulumi.Input.mapOptionalInputValue<PropagatedRouteTable, Map<String, dynamic>>(propagatedRouteTables, (value) => value.toMap()),
      'vnetRoutes': ?pulumi.Input.mapOptionalInputValue<VnetRoute, Map<String, dynamic>>(vnetRoutes, (value) => value.toMap()),
    };
  }

  factory RoutingConfiguration.fromMap(Map<String, dynamic> map) {
    return RoutingConfiguration(
      associatedRouteTable: map['associatedRouteTable'] == null ? null : (SubResource.fromMap((map['associatedRouteTable'] as Map).cast<String, dynamic>())).input(),
      inboundRouteMap: map['inboundRouteMap'] == null ? null : (SubResource.fromMap((map['inboundRouteMap'] as Map).cast<String, dynamic>())).input(),
      outboundRouteMap: map['outboundRouteMap'] == null ? null : (SubResource.fromMap((map['outboundRouteMap'] as Map).cast<String, dynamic>())).input(),
      propagatedRouteTables: map['propagatedRouteTables'] == null ? null : (PropagatedRouteTable.fromMap((map['propagatedRouteTables'] as Map).cast<String, dynamic>())).input(),
      vnetRoutes: map['vnetRoutes'] == null ? null : (VnetRoute.fromMap((map['vnetRoutes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

