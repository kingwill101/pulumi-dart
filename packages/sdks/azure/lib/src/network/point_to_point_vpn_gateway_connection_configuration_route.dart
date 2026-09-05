// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'point_to_point_vpn_gateway_connection_configuration_route_propagated_route_table.dart';

class PointToPointVpnGatewayConnectionConfigurationRoute {
  /// The Virtual Hub Route Table resource id associated with this Routing Configuration.
  final pulumi.Input<String> associatedRouteTableId;
  /// The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes.
  final pulumi.Input<String?>? inboundRouteMapId;
  /// The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
  final pulumi.Input<String?>? outboundRouteMapId;
  /// A `propagatedRouteTable` block as defined below.
  final pulumi.Input<PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable?>? propagatedRouteTable;

  /// Creates a new [PointToPointVpnGatewayConnectionConfigurationRoute].
  /// [associatedRouteTableId] The Virtual Hub Route Table resource id associated with this Routing Configuration.
  /// [inboundRouteMapId] The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes.
  /// [outboundRouteMapId] The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
  /// [propagatedRouteTable] A `propagatedRouteTable` block as defined below.
  const PointToPointVpnGatewayConnectionConfigurationRoute({
    required this.associatedRouteTableId,
    this.inboundRouteMapId,
    this.outboundRouteMapId,
    this.propagatedRouteTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRouteTableId': associatedRouteTableId,
      'inboundRouteMapId': ?inboundRouteMapId,
      'outboundRouteMapId': ?outboundRouteMapId,
      'propagatedRouteTable': ?pulumi.Input.mapOptionalInputValue<PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable, Map<String, dynamic>>(propagatedRouteTable, (value) => value.toMap()),
    };
  }

  factory PointToPointVpnGatewayConnectionConfigurationRoute.fromMap(Map<String, dynamic> map) {
    return PointToPointVpnGatewayConnectionConfigurationRoute(
      associatedRouteTableId: pulumi.Input.fromValue(map['associatedRouteTableId'] as String),
      inboundRouteMapId: (() { final guardedValue = map['inboundRouteMapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundRouteMapId: (() { final guardedValue = map['outboundRouteMapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propagatedRouteTable: (() { final guardedValue = map['propagatedRouteTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
