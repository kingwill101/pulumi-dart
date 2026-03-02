// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_v2_response.dart';

/// VirtualHubRouteTableV2 Resource.
class VirtualHubRouteTableV2Response {
  /// List of all connections attached to this route table v2.
  final pulumi.Input<List<String>>? attachedConnections;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the virtual hub route table v2 resource.
  final pulumi.Input<String> provisioningState;
  /// List of all routes.
  final pulumi.Input<List<VirtualHubRouteV2Response>>? routes;

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
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubRouteV2Response>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualHubRouteV2Response, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualHubRouteTableV2Response.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableV2Response(
      attachedConnections: map['attachedConnections'] == null ? null : ((map['attachedConnections']! as List).cast<String>()).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<VirtualHubRouteV2Response>(map['routes']!, (value) => VirtualHubRouteV2Response.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

