// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_route_response.dart';

/// Result data returned by getHubRouteTable.
class GetHubRouteTableResult {
  /// List of all connections associated with this route table.
  final List<String> associatedConnections;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// List of labels associated with this route table.
  final List<String>? labels;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// List of all connections that advertise to this route table.
  final List<String> propagatingConnections;
  /// The provisioning state of the RouteTable resource.
  final String provisioningState;
  /// List of all routes.
  final List<HubRouteResponse>? routes;
  /// Resource type.
  final String type;

  /// Creates a new [GetHubRouteTableResult].
  /// [associatedConnections] List of all connections associated with this route table.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [labels] List of labels associated with this route table.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [propagatingConnections] List of all connections that advertise to this route table.
  /// [provisioningState] The provisioning state of the RouteTable resource.
  /// [routes] List of all routes.
  /// [type] Resource type.
  const GetHubRouteTableResult({
    required this.associatedConnections,
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.labels,
    this.name,
    required this.propagatingConnections,
    required this.provisioningState,
    this.routes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedConnections': associatedConnections,
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'propagatingConnections': propagatingConnections,
      'provisioningState': provisioningState,
      'routes': ?(() { final guardedValue = routes; if (guardedValue == null) return null; return pulumi.Input.encodeList<HubRouteResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
    };
  }

  factory GetHubRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetHubRouteTableResult(
      associatedConnections: (map['associatedConnections'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      propagatingConnections: (map['propagatingConnections'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<HubRouteResponse>(guardedValue, (value) => HubRouteResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
    );
  }
}
