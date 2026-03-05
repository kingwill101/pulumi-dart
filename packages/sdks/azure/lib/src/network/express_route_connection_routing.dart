// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_connection_routing_propagated_route_table.dart';

class ExpressRouteConnectionRouting {
  /// The ID of the Virtual Hub Route Table associated with this Express Route Connection.
  final pulumi.Input<String>? associatedRouteTableId;
  /// The ID of the Route Map associated with this Express Route Connection for inbound routes.
  final pulumi.Input<String>? inboundRouteMapId;
  /// The ID of the Route Map associated with this Express Route Connection for outbound routes.
  final pulumi.Input<String>? outboundRouteMapId;
  /// A `propagated_route_table` block as defined below.
  final pulumi.Input<ExpressRouteConnectionRoutingPropagatedRouteTable>? propagatedRouteTable;

  /// Creates a new [ExpressRouteConnectionRouting].
  /// [associatedRouteTableId] The ID of the Virtual Hub Route Table associated with this Express Route Connection.
  /// [inboundRouteMapId] The ID of the Route Map associated with this Express Route Connection for inbound routes.
  /// [outboundRouteMapId] The ID of the Route Map associated with this Express Route Connection for outbound routes.
  /// [propagatedRouteTable] A `propagated_route_table` block as defined below.
  ExpressRouteConnectionRouting({
    this.associatedRouteTableId,
    this.inboundRouteMapId,
    this.outboundRouteMapId,
    this.propagatedRouteTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRouteTableId': ?associatedRouteTableId,
      'inboundRouteMapId': ?inboundRouteMapId,
      'outboundRouteMapId': ?outboundRouteMapId,
      'propagatedRouteTable': ?pulumi.Input.mapOptionalInputValue<ExpressRouteConnectionRoutingPropagatedRouteTable, Map<String, dynamic>>(propagatedRouteTable, (value) => value.toMap()),
    };
  }

  factory ExpressRouteConnectionRouting.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionRouting(
      associatedRouteTableId: (() { final guardedValue = map['associatedRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inboundRouteMapId: (() { final guardedValue = map['inboundRouteMapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundRouteMapId: (() { final guardedValue = map['outboundRouteMapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propagatedRouteTable: (() { final guardedValue = map['propagatedRouteTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteConnectionRoutingPropagatedRouteTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

