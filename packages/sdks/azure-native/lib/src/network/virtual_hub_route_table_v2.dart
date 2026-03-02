// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_v2.dart';

/// VirtualHubRouteTableV2 Resource.
class VirtualHubRouteTableV2 {
  /// List of all connections attached to this route table v2.
  final pulumi.Input<List<String>>? attachedConnections;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// List of all routes.
  final pulumi.Input<List<VirtualHubRouteV2>>? routes;

  /// Creates a new [VirtualHubRouteTableV2].
  /// [attachedConnections] List of all connections attached to this route table v2.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [routes] List of all routes.
  VirtualHubRouteTableV2({
    this.attachedConnections,
    this.id,
    this.name,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedConnections': ?attachedConnections,
      'id': ?id,
      'name': ?name,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubRouteV2>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualHubRouteV2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualHubRouteTableV2.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableV2(
      attachedConnections: map['attachedConnections'] == null ? null : ((map['attachedConnections']! as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<VirtualHubRouteV2>(map['routes']!, (value) => VirtualHubRouteV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

