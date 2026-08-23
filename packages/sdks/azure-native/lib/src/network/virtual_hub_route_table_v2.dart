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
  const VirtualHubRouteTableV2({
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
      attachedConnections: (() { final guardedValue = map['attachedConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualHubRouteV2>(guardedValue, (value) => VirtualHubRouteV2.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
