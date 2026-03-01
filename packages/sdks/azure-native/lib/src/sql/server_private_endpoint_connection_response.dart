// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_connection_properties_response.dart';

/// A private endpoint connection under a server
class ServerPrivateEndpointConnectionResponse {
  /// Resource ID.
  final String id;
  /// Private endpoint connection properties
  final PrivateEndpointConnectionPropertiesResponse properties;

  /// Creates a new [ServerPrivateEndpointConnectionResponse].
  /// [id] Resource ID.
  /// [properties] Private endpoint connection properties
  ServerPrivateEndpointConnectionResponse({
    required this.id,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'properties': properties.toMap(),
    };
  }

  factory ServerPrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ServerPrivateEndpointConnectionResponse(
      id: map['id'] as String,
      properties: PrivateEndpointConnectionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

