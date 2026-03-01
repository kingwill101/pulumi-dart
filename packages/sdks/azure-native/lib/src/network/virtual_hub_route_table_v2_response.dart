// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_v2_response.dart';

/// VirtualHubRouteTableV2 Resource.
class VirtualHubRouteTableV2Response {
  /// List of all connections attached to this route table v2.
  final List<String>? attachedConnections;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the virtual hub route table v2 resource.
  final String provisioningState;
  /// List of all routes.
  final List<VirtualHubRouteV2Response>? routes;

  /// Creates a new [VirtualHubRouteTableV2Response].
  /// [attachedConnections] List of all connections attached to this route table v2.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the virtual hub route table v2 resource.
  /// [routes] List of all routes.
  VirtualHubRouteTableV2Response({
    this.attachedConnections,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedConnections': ?attachedConnections,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'routes': ?routes == null ? null : pulumi.Input.encodeList<VirtualHubRouteV2Response, Map<String, dynamic>>(routes!, (value) => value.toMap()),
    };
  }

  factory VirtualHubRouteTableV2Response.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableV2Response(
      attachedConnections: map['attachedConnections'] == null ? null : (map['attachedConnections'] as List).cast<String>(),
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<VirtualHubRouteV2Response>(map['routes'], (value) => VirtualHubRouteV2Response.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

