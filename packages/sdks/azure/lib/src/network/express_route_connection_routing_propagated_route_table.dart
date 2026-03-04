// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressRouteConnectionRoutingPropagatedRouteTable {
  /// The list of labels to logically group route tables.
  final pulumi.Input<List<String>>? labels;

  /// A list of IDs of the Virtual Hub Route Table to propagate routes from Express Route Connection to the route table.
  final pulumi.Input<List<String>>? routeTableIds;

  /// Creates a new [ExpressRouteConnectionRoutingPropagatedRouteTable].
  /// [labels] The list of labels to logically group route tables.
  /// [routeTableIds] A list of IDs of the Virtual Hub Route Table to propagate routes from Express Route Connection to the route table.
  ExpressRouteConnectionRoutingPropagatedRouteTable({
    this.labels,
    this.routeTableIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'routeTableIds': ?routeTableIds,
    };
  }

  factory ExpressRouteConnectionRoutingPropagatedRouteTable.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExpressRouteConnectionRoutingPropagatedRouteTable(
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
