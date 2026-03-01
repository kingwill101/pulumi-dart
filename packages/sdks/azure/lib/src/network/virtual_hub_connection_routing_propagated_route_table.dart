// ignore_for_file: unused_element, unnecessary_cast


class VirtualHubConnectionRoutingPropagatedRouteTable {
  /// The list of labels to assign to this route table.
  final List<String>? labels;
  /// A list of Route Table IDs to associated with this Virtual Hub Connection.
  final List<String>? routeTableIds;

  /// Creates a new [VirtualHubConnectionRoutingPropagatedRouteTable].
  /// [labels] The list of labels to assign to this route table.
  /// [routeTableIds] A list of Route Table IDs to associated with this Virtual Hub Connection.
  VirtualHubConnectionRoutingPropagatedRouteTable({
    this.labels,
    this.routeTableIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'routeTableIds': ?routeTableIds,
    };
  }

  factory VirtualHubConnectionRoutingPropagatedRouteTable.fromMap(Map<String, dynamic> map) {
    return VirtualHubConnectionRoutingPropagatedRouteTable(
      labels: map['labels'] == null ? null : (map['labels'] as List).cast<String>(),
      routeTableIds: map['routeTableIds'] == null ? null : (map['routeTableIds'] as List).cast<String>(),
    );
  }
}

