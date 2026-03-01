// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_network.dart';

/// {@template pulumi_network_route_table_args_doc}
/// The set of arguments for RouteTable.
/// {@endtemplate}
/// {@macro pulumi_network_route_table_args_doc}
class RouteTableArgs {
  /// Whether to disable the routes learned by BGP on that route table. True means disable.
  final pulumi.Input<bool>? disableBgpRoutePropagation;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the route table.
  final pulumi.Input<String>? routeTableName;
  /// Collection of routes contained within a route table.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<RouteNetwork>>? routes;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RouteTableArgs].
  /// [disableBgpRoutePropagation] Whether to disable the routes learned by BGP on that route table. True means disable.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [routeTableName] The name of the route table.
  /// [routes] Collection of routes contained within a route table.
  /// [tags] Resource tags.
  RouteTableArgs({
    pulumi.Output<bool>? disableBgpRoutePropagation,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? routeTableName,
    pulumi.Output<List<RouteNetwork>>? routes,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      disableBgpRoutePropagation = pulumi.Input.asOptionalInput<bool>(disableBgpRoutePropagation),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeTableName = pulumi.Input.asOptionalInput<String>(routeTableName),
      routes = pulumi.Input.asOptionalInput<List<RouteNetwork>>(routes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableBgpRoutePropagation': ?disableBgpRoutePropagation,
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'routeTableName': ?routeTableName,
      'routes': ?routes,
      'tags': ?tags,
    };
  }

  factory RouteTableArgs.fromMap(Map<String, dynamic> map) {
    return RouteTableArgs(
      disableBgpRoutePropagation: map['disableBgpRoutePropagation'] == null ? null : pulumi.Output.create<bool>(map['disableBgpRoutePropagation'] as bool),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeTableName: map['routeTableName'] == null ? null : pulumi.Output.create<String>(map['routeTableName'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<RouteNetwork>>((map['routes'] as List).cast<RouteNetwork>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

