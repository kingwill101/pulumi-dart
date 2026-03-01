// ignore_for_file: unused_element, unnecessary_cast

import 'managed_instance_private_endpoint_connection_properties_response.dart';

/// A private endpoint connection under a managed instance
class ManagedInstancePecPropertyResponse {
  /// Resource ID.
  final String id;
  /// Private endpoint connection properties
  final ManagedInstancePrivateEndpointConnectionPropertiesResponse properties;

  /// Creates a new [ManagedInstancePecPropertyResponse].
  /// [id] Resource ID.
  /// [properties] Private endpoint connection properties
  ManagedInstancePecPropertyResponse({
    required this.id,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'properties': properties.toMap(),
    };
  }

  factory ManagedInstancePecPropertyResponse.fromMap(Map<String, dynamic> map) {
    return ManagedInstancePecPropertyResponse(
      id: map['id'] as String,
      properties: ManagedInstancePrivateEndpointConnectionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

