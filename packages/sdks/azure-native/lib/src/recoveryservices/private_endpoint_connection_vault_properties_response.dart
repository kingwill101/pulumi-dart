// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_private_endpoint_connection_response.dart';

/// Information to be stored in Vault properties as an element of privateEndpointConnections List.
class PrivateEndpointConnectionVaultPropertiesResponse {
  /// Format of id subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.[Service]/{resource}/{resourceName}/privateEndpointConnections/{connectionName}.
  final pulumi.Input<String> id;
  /// The location of the private Endpoint connection
  final pulumi.Input<String> location;
  /// The name of the private Endpoint Connection
  final pulumi.Input<String> name;
  /// Private Endpoint Connection Response Properties.
  final pulumi.Input<VaultPrivateEndpointConnectionResponse> properties;
  /// The type, which will be of the format, Microsoft.RecoveryServices/vaults/privateEndpointConnections
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionVaultPropertiesResponse].
  /// [id] Format of id subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.[Service]/{resource}/{resourceName}/privateEndpointConnections/{connectionName}.
  /// [location] The location of the private Endpoint connection
  /// [name] The name of the private Endpoint Connection
  /// [properties] Private Endpoint Connection Response Properties.
  /// [type] The type, which will be of the format, Microsoft.RecoveryServices/vaults/privateEndpointConnections
  const PrivateEndpointConnectionVaultPropertiesResponse({
    required this.id,
    required this.location,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'properties': pulumi.Input.mapInputValue<VaultPrivateEndpointConnectionResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionVaultPropertiesResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(VaultPrivateEndpointConnectionResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

