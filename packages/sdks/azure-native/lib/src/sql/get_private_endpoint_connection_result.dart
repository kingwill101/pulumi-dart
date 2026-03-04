// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_property_response.dart';
import 'private_link_service_connection_state_property_response.dart';

/// Result data returned by getPrivateEndpointConnection.
class GetPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Group IDs.
  final List<String> groupIds;

  /// Resource ID.
  final String id;

  /// Resource name.
  final String name;

  /// Private endpoint which the connection belongs to.
  final PrivateEndpointPropertyResponse? privateEndpoint;

  /// Connection state of the private endpoint connection.
  final PrivateLinkServiceConnectionStatePropertyResponse?
  privateLinkServiceConnectionState;

  /// State of the private endpoint connection.
  final String provisioningState;

  /// Resource type.
  final String type;

  /// Creates a new [GetPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupIds] Group IDs.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  /// [provisioningState] State of the private endpoint connection.
  /// [type] Resource type.
  GetPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    required this.groupIds,
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
      'groupIds': groupIds,
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint?.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState
          ?.toMap(),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      groupIds: (map['groupIds'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return PrivateEndpointPropertyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return PrivateLinkServiceConnectionStatePropertyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}
