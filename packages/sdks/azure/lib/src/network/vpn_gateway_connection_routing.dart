// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_connection_routing_propagated_route_table.dart';

class VpnGatewayConnectionRouting {
  /// The ID of the Route Table associated with this VPN Connection.
  final pulumi.Input<String> associatedRouteTable;
  /// The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes.
  final pulumi.Input<String>? inboundRouteMapId;
  /// The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
  final pulumi.Input<String>? outboundRouteMapId;
  /// A `propagated_route_table` block as defined below.
  final pulumi.Input<VpnGatewayConnectionRoutingPropagatedRouteTable>? propagatedRouteTable;

  /// Creates a new [VpnGatewayConnectionRouting].
  /// [associatedRouteTable] The ID of the Route Table associated with this VPN Connection.
  /// [inboundRouteMapId] The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes.
  /// [outboundRouteMapId] The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
  /// [propagatedRouteTable] A `propagated_route_table` block as defined below.
  VpnGatewayConnectionRouting({
    required this.associatedRouteTable,
    this.inboundRouteMapId,
    this.outboundRouteMapId,
    this.propagatedRouteTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRouteTable': associatedRouteTable,
      'inboundRouteMapId': ?inboundRouteMapId,
      'outboundRouteMapId': ?outboundRouteMapId,
      'propagatedRouteTable': ?pulumi.Input.mapOptionalInputValue<VpnGatewayConnectionRoutingPropagatedRouteTable, Map<String, dynamic>>(propagatedRouteTable, (value) => value.toMap()),
    };
  }

  factory VpnGatewayConnectionRouting.fromMap(Map<String, dynamic> map) {
    return VpnGatewayConnectionRouting(
      associatedRouteTable: (map['associatedRouteTable'] as String).input(),
      inboundRouteMapId: map['inboundRouteMapId'] == null ? null : (map['inboundRouteMapId']! as String).input(),
      outboundRouteMapId: map['outboundRouteMapId'] == null ? null : (map['outboundRouteMapId']! as String).input(),
      propagatedRouteTable: map['propagatedRouteTable'] == null ? null : (VpnGatewayConnectionRoutingPropagatedRouteTable.fromMap((map['propagatedRouteTable']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

