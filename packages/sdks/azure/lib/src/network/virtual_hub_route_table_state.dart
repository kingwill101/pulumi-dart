// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_table_route.dart';

/// Input properties used for looking up and filtering VirtualHubRouteTable resources.
class VirtualHubRouteTableState {
  /// List of labels associated with this route table.
  final pulumi.Input<List<String>>? labels;
  /// The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `route` blocks as defined below.
  final pulumi.Input<List<VirtualHubRouteTableRoute>>? routes;
  /// The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;

  /// Creates a new [VirtualHubRouteTableState].
  /// [labels] List of labels associated with this route table.
  /// [name] The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created.
  /// [routes] One or more `route` blocks as defined below.
  /// [virtualHubId] The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created.
  VirtualHubRouteTableState({
    pulumi.Output<List<String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<List<VirtualHubRouteTableRoute>>? routes,
    pulumi.Output<String>? virtualHubId,
  }) :
      labels = pulumi.Input.asOptionalInput<List<String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      routes = pulumi.Input.asOptionalInput<List<VirtualHubRouteTableRoute>>(routes),
      virtualHubId = pulumi.Input.asOptionalInput<String>(virtualHubId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'name': ?name,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubRouteTableRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualHubRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubId': ?virtualHubId,
    };
  }

  factory VirtualHubRouteTableState.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableState(
      labels: map['labels'] == null ? null : pulumi.Output.create<List<String>>((map['labels'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<VirtualHubRouteTableRoute>>(pulumi.Input.decodeList<VirtualHubRouteTableRoute>(map['routes'], (value) => VirtualHubRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))),
      virtualHubId: map['virtualHubId'] == null ? null : pulumi.Output.create<String>(map['virtualHubId'] as String),
    );
  }
}

