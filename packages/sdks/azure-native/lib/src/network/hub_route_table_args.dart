// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_route.dart';

/// {@template pulumi_network_hub_route_table_args_doc}
/// The set of arguments for HubRouteTable.
/// {@endtemplate}
/// {@macro pulumi_network_hub_route_table_args_doc}
class HubRouteTableArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// List of labels associated with this route table.
  final pulumi.Input<List<String>>? labels;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the RouteTable.
  final pulumi.Input<String>? routeTableName;
  /// List of all routes.
  final pulumi.Input<List<HubRoute>>? routes;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [HubRouteTableArgs].
  /// [id] Resource ID.
  /// [labels] List of labels associated with this route table.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [routeTableName] The name of the RouteTable.
  /// [routes] List of all routes.
  /// [virtualHubName] The name of the VirtualHub.
  HubRouteTableArgs({
    this.id,
    this.labels,
    this.name,
    required this.resourceGroupName,
    this.routeTableName,
    this.routes,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'routeTableName': ?routeTableName,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<HubRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<HubRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubName': virtualHubName,
    };
  }

  factory HubRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return HubRouteTableArgs(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routeTableName: map['routeTableName'] == null ? null : (map['routeTableName'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<HubRoute>(map['routes'], (value) => HubRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualHubName: (map['virtualHubName'] as String).input(),
    );
  }
}

