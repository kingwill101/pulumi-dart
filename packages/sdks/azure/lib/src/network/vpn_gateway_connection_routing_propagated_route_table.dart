// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnGatewayConnectionRoutingPropagatedRouteTable {
  /// A list of labels to assign to this route table.
  final pulumi.Input<List<String>>? labels;
  /// A list of Route Table IDs to associated with this VPN Gateway Connection.
  final pulumi.Input<List<String>> routeTableIds;

  /// Creates a new [VpnGatewayConnectionRoutingPropagatedRouteTable].
  /// [labels] A list of labels to assign to this route table.
  /// [routeTableIds] A list of Route Table IDs to associated with this VPN Gateway Connection.
  VpnGatewayConnectionRoutingPropagatedRouteTable({
    this.labels,
    required this.routeTableIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'routeTableIds': routeTableIds,
    };
  }

  factory VpnGatewayConnectionRoutingPropagatedRouteTable.fromMap(Map<String, dynamic> map) {
    return VpnGatewayConnectionRoutingPropagatedRouteTable(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      routeTableIds: pulumi.Input.fromValue((map['routeTableIds'] as List).cast<String>()),
    );
  }
}

