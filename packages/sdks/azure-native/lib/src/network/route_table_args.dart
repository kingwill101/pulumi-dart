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
  const RouteTableArgs({
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
      disableBgpRoutePropagation: (() { final guardedValue = map['disableBgpRoutePropagation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeTableName: (() { final guardedValue = map['routeTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<RouteNetwork>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
