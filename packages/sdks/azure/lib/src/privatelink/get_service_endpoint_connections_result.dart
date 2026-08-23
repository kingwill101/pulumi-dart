// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_endpoint_connections_private_endpoint_connection.dart';

/// Result data returned by getServiceEndpointConnections.
class GetServiceEndpointConnectionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final List<GetServiceEndpointConnectionsPrivateEndpointConnection> privateEndpointConnections;
  final String resourceGroupName;
  final String serviceId;
  /// The name of the private link service.
  final String serviceName;

  /// Creates a new [GetServiceEndpointConnectionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [privateEndpointConnections] Required.
  /// [resourceGroupName] Required.
  /// [serviceId] Required.
  /// [serviceName] The name of the private link service.
  const GetServiceEndpointConnectionsResult({
    required this.id,
    required this.location,
    required this.privateEndpointConnections,
    required this.resourceGroupName,
    required this.serviceId,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'privateEndpointConnections': pulumi.Input.encodeList<GetServiceEndpointConnectionsPrivateEndpointConnection, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceId': serviceId,
      'serviceName': serviceName,
    };
  }

  factory GetServiceEndpointConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetServiceEndpointConnectionsResult(
      id: map['id'] as String,
      location: map['location'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<GetServiceEndpointConnectionsPrivateEndpointConnection>(map['privateEndpointConnections']!, (value) => GetServiceEndpointConnectionsPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceId: map['serviceId'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
