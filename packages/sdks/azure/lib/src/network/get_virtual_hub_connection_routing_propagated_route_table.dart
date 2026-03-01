// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualHubConnectionRoutingPropagatedRouteTable {
  /// The list of labels assigned to this route table.
  final List<String> labels;
  /// A list of Route Table IDs associated with this Virtual Hub Connection.
  final List<String> routeTableIds;

  /// Creates a new [GetVirtualHubConnectionRoutingPropagatedRouteTable].
  /// [labels] The list of labels assigned to this route table.
  /// [routeTableIds] A list of Route Table IDs associated with this Virtual Hub Connection.
  GetVirtualHubConnectionRoutingPropagatedRouteTable({
    required this.labels,
    required this.routeTableIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': labels,
      'routeTableIds': routeTableIds,
    };
  }

  factory GetVirtualHubConnectionRoutingPropagatedRouteTable.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubConnectionRoutingPropagatedRouteTable(
      labels: (map['labels'] as List).cast<String>(),
      routeTableIds: (map['routeTableIds'] as List).cast<String>(),
    );
  }
}

