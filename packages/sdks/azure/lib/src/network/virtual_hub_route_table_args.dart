// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_table_route.dart';

/// {@template pulumi_network_virtual_hub_route_table_virtual_hub_route_table_args_doc}
/// The set of arguments for VirtualHubRouteTable.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_route_table_virtual_hub_route_table_args_doc}
class VirtualHubRouteTableArgs {
  /// List of labels associated with this route table.
  final pulumi.Input<List<String>>? labels;
  /// The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `route` blocks as defined below.
  final pulumi.Input<List<VirtualHubRouteTableRoute>>? routes;
  /// The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualHubId;

  /// Creates a new [VirtualHubRouteTableArgs].
  /// [labels] List of labels associated with this route table.
  /// [name] The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created.
  /// [routes] One or more `route` blocks as defined below.
  /// [virtualHubId] The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created.
  VirtualHubRouteTableArgs({
    this.labels,
    this.name,
    this.routes,
    required this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'name': ?name,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubRouteTableRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualHubRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubId': virtualHubId,
    };
  }

  factory VirtualHubRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableArgs(
      labels: map['labels'] == null ? null : ((map['labels']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<VirtualHubRouteTableRoute>(map['routes']!, (value) => VirtualHubRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualHubId: (map['virtualHubId'] as String).input(),
    );
  }
}

