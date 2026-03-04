// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_v2_response.dart';

/// Result data returned by getVirtualHubRouteTableV2.
class GetVirtualHubRouteTableV2Result {
  /// List of all connections attached to this route table v2.
  final List<String>? attachedConnections;

  /// The Azure API version of the resource.
  final String azureApiVersion;

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

  /// Creates a new [GetVirtualHubRouteTableV2Result].
  /// [attachedConnections] List of all connections attached to this route table v2.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the virtual hub route table v2 resource.
  /// [routes] List of all routes.
  GetVirtualHubRouteTableV2Result({
    this.attachedConnections,
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedConnections': ?attachedConnections,
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'routes': ?(() {
        final guardedValue = routes;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          VirtualHubRouteV2Response,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory GetVirtualHubRouteTableV2Result.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubRouteTableV2Result(
      attachedConnections: (() {
        final guardedValue = map['attachedConnections'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      routes: (() {
        final guardedValue = map['routes'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<VirtualHubRouteV2Response>(
          guardedValue,
          (value) => VirtualHubRouteV2Response.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
