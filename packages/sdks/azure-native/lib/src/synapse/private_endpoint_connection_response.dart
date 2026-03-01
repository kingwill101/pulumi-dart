// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// A private endpoint connection
class PrivateEndpointConnectionResponse {
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The private endpoint which the connection belongs to.
  final PrivateEndpointResponse? privateEndpoint;
  /// Connection state of the private endpoint connection.
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final String provisioningState;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [privateEndpoint] The private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  /// [provisioningState] Provisioning state of the private endpoint connection.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  PrivateEndpointConnectionResponse({
    required this.id,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

