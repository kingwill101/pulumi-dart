// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties_response.dart';

/// A private endpoint connection under a server
class ServerPrivateEndpointConnectionResponse {
  /// Resource ID.
  final pulumi.Input<String> id;
  /// Private endpoint connection properties
  final pulumi.Input<PrivateEndpointConnectionPropertiesResponse> properties;

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
      'properties': pulumi.Input.mapInputValue<PrivateEndpointConnectionPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ServerPrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ServerPrivateEndpointConnectionResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      properties: pulumi.Input.fromValue(PrivateEndpointConnectionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

