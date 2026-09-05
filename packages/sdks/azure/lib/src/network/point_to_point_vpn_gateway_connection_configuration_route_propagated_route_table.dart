// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable {
  /// The list of Virtual Hub Route Table resource id which the routes will be propagated to.
  final pulumi.Input<List<String>> ids;
  /// The list of labels to logically group Virtual Hub Route Tables which the routes will be propagated to.
  final pulumi.Input<List<String>?>? labels;

  /// Creates a new [PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable].
  /// [ids] The list of Virtual Hub Route Table resource id which the routes will be propagated to.
  /// [labels] The list of labels to logically group Virtual Hub Route Tables which the routes will be propagated to.
  const PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable({
    required this.ids,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ids,
      'labels': ?labels,
    };
  }

  factory PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable.fromMap(Map<String, dynamic> map) {
    return PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable(
      ids: pulumi.Input.fromValue((map['ids'] as List).cast<String>()),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
