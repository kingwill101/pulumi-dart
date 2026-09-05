// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_endpoint_connections_private_endpoint_connection.dart';

/// Result data returned by getServiceEndpointConnections.
class GetServiceEndpointConnectionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final List<GetServiceEndpointConnectionsPrivateEndpointConnection>? privateEndpointConnections;
  final String? resourceGroupName;
  final String? serviceId;
  /// The name of the private link service.
  final String? serviceName;

  /// Creates a new [GetServiceEndpointConnectionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [privateEndpointConnections] Optional.
  /// [resourceGroupName] Optional.
  /// [serviceId] Optional.
  /// [serviceName] The name of the private link service.
  const GetServiceEndpointConnectionsResult({
    this.id,
    this.location,
    this.privateEndpointConnections,
    this.resourceGroupName,
    this.serviceId,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceEndpointConnectionsPrivateEndpointConnection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'serviceId': ?serviceId,
      'serviceName': ?serviceName,
    };
  }

  factory GetServiceEndpointConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetServiceEndpointConnectionsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceEndpointConnectionsPrivateEndpointConnection>(guardedValue, (value) => GetServiceEndpointConnectionsPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
