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
    pulumi.Output<String>? id,
    pulumi.Output<List<String>>? labels,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? routeTableName,
    pulumi.Output<List<HubRoute>>? routes,
    required pulumi.Output<String> virtualHubName,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      labels = pulumi.Input.asOptionalInput<List<String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeTableName = pulumi.Input.asOptionalInput<String>(routeTableName),
      routes = pulumi.Input.asOptionalInput<List<HubRoute>>(routes),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

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
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<String>>((map['labels'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeTableName: map['routeTableName'] == null ? null : pulumi.Output.create<String>(map['routeTableName'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<HubRoute>>(pulumi.Input.decodeList<HubRoute>(map['routes'], (value) => HubRoute.fromMap((value as Map).cast<String, dynamic>()))),
      virtualHubName: pulumi.Output.create<String>(map['virtualHubName'] as String),
    );
  }
}

