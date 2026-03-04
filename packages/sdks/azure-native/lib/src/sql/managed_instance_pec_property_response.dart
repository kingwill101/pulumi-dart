// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_private_endpoint_connection_properties_response.dart';

/// A private endpoint connection under a managed instance
class ManagedInstancePecPropertyResponse {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Private endpoint connection properties
  final pulumi.Input<ManagedInstancePrivateEndpointConnectionPropertiesResponse>
  properties;

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
      'properties':
          pulumi.Input.mapInputValue<
            ManagedInstancePrivateEndpointConnectionPropertiesResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory ManagedInstancePecPropertyResponse.fromMap(Map<String, dynamic> map) {
    return ManagedInstancePecPropertyResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      properties: pulumi.Input.fromValue(
        ManagedInstancePrivateEndpointConnectionPropertiesResponse.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
