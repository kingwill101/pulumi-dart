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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeTableName: (() { final guardedValue = map['routeTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HubRoute>(guardedValue, (value) => HubRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}

