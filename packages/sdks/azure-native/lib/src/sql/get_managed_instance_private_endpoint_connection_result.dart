// ignore_for_file: unused_element, unnecessary_cast

import 'managed_instance_private_endpoint_property_response.dart';
import 'managed_instance_private_link_service_connection_state_property_response.dart';

/// Result data returned by getManagedInstancePrivateEndpointConnection.
class GetManagedInstancePrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Resource ID.
  final String id;

  /// Resource name.
  final String name;

  /// Private endpoint which the connection belongs to.
  final ManagedInstancePrivateEndpointPropertyResponse? privateEndpoint;

  /// Connection State of the Private Endpoint Connection.
  final ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse?
  privateLinkServiceConnectionState;

  /// State of the Private Endpoint Connection.
  final String provisioningState;

  /// Resource type.
  final String type;

  /// Creates a new [GetManagedInstancePrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection State of the Private Endpoint Connection.
  /// [provisioningState] State of the Private Endpoint Connection.
  /// [type] Resource type.
  GetManagedInstancePrivateEndpointConnectionResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint?.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState
          ?.toMap(),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetManagedInstancePrivateEndpointConnectionResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedInstancePrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return ManagedInstancePrivateEndpointPropertyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}
