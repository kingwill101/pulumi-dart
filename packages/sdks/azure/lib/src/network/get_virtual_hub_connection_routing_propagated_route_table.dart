// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualHubConnectionRoutingPropagatedRouteTable {
  /// The list of labels assigned to this route table.
  final pulumi.Input<List<String>> labels;
  /// A list of Route Table IDs associated with this Virtual Hub Connection.
  final pulumi.Input<List<String>> routeTableIds;

  /// Creates a new [GetVirtualHubConnectionRoutingPropagatedRouteTable].
  /// [labels] The list of labels assigned to this route table.
  /// [routeTableIds] A list of Route Table IDs associated with this Virtual Hub Connection.
  const GetVirtualHubConnectionRoutingPropagatedRouteTable({
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
      labels: pulumi.Input.fromValue((map['labels'] as List).cast<String>()),
      routeTableIds: pulumi.Input.fromValue((map['routeTableIds'] as List).cast<String>()),
    );
  }
}

