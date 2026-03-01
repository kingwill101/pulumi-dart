// ignore_for_file: unused_element, unnecessary_cast


class VpnGatewayConnectionRoutingPropagatedRouteTable {
  /// A list of labels to assign to this route table.
  final List<String>? labels;
  /// A list of Route Table IDs to associated with this VPN Gateway Connection.
  final List<String> routeTableIds;

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
      labels: map['labels'] == null ? null : (map['labels'] as List).cast<String>(),
      routeTableIds: (map['routeTableIds'] as List).cast<String>(),
    );
  }
}

