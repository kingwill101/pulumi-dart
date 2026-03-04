// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualHubConnectionRoutingPropagatedRouteTable {
  /// The list of labels to assign to this route table.
  final pulumi.Input<List<String>>? labels;

  /// A list of Route Table IDs to associated with this Virtual Hub Connection.
  final pulumi.Input<List<String>>? routeTableIds;

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

  factory VirtualHubConnectionRoutingPropagatedRouteTable.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualHubConnectionRoutingPropagatedRouteTable(
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      routeTableIds: (() {
        final guardedValue = map['routeTableIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
