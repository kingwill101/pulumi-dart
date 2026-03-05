// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_v2.dart';

/// {@template pulumi_network_virtual_hub_route_table_v2_args_doc}
/// The set of arguments for VirtualHubRouteTableV2.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_route_table_v2_args_doc}
class VirtualHubRouteTableV2Args {
  /// List of all connections attached to this route table v2.
  final pulumi.Input<List<String>>? attachedConnections;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualHubRouteTableV2.
  final pulumi.Input<String>? routeTableName;
  /// List of all routes.
  final pulumi.Input<List<VirtualHubRouteV2>>? routes;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [VirtualHubRouteTableV2Args].
  /// [attachedConnections] List of all connections attached to this route table v2.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [routeTableName] The name of the VirtualHubRouteTableV2.
  /// [routes] List of all routes.
  /// [virtualHubName] The name of the VirtualHub.
  VirtualHubRouteTableV2Args({
    this.attachedConnections,
    this.id,
    this.name,
    required this.resourceGroupName,
    this.routeTableName,
    this.routes,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedConnections': ?attachedConnections,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'routeTableName': ?routeTableName,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubRouteV2>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualHubRouteV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubName': virtualHubName,
    };
  }

  factory VirtualHubRouteTableV2Args.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableV2Args(
      attachedConnections: (() { final guardedValue = map['attachedConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeTableName: (() { final guardedValue = map['routeTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualHubRouteV2>(guardedValue, (value) => VirtualHubRouteV2.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}

