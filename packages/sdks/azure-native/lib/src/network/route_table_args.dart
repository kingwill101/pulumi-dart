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
    this.disableBgpRoutePropagation,
    this.id,
    this.location,
    required this.resourceGroupName,
    this.routeTableName,
    this.routes,
    this.tags,
  });

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
      disableBgpRoutePropagation: map['disableBgpRoutePropagation'] == null ? null : (map['disableBgpRoutePropagation']! as bool).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routeTableName: map['routeTableName'] == null ? null : (map['routeTableName']! as String).input(),
      routes: map['routes'] == null ? null : ((map['routes']! as List).cast<RouteNetwork>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

