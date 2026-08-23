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
  /// A `propagatedRouteTable` block as defined below.
  final pulumi.Input<VpnGatewayConnectionRoutingPropagatedRouteTable>? propagatedRouteTable;

  /// Creates a new [VpnGatewayConnectionRouting].
  /// [associatedRouteTable] The ID of the Route Table associated with this VPN Connection.
  /// [inboundRouteMapId] The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes.
  /// [outboundRouteMapId] The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
  /// [propagatedRouteTable] A `propagatedRouteTable` block as defined below.
  const VpnGatewayConnectionRouting({
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
      associatedRouteTable: pulumi.Input.fromValue(map['associatedRouteTable'] as String),
      inboundRouteMapId: (() { final guardedValue = map['inboundRouteMapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundRouteMapId: (() { final guardedValue = map['outboundRouteMapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propagatedRouteTable: (() { final guardedValue = map['propagatedRouteTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnGatewayConnectionRoutingPropagatedRouteTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
