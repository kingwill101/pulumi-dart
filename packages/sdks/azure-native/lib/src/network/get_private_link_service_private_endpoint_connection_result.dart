// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Result data returned by getPrivateLinkServicePrivateEndpointConnection.
class GetPrivateLinkServicePrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The consumer link id.
  final String linkIdentifier;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The resource of private end point.
  final PrivateEndpointResponse privateEndpoint;
  /// The location of the private endpoint.
  final String privateEndpointLocation;
  /// A collection of information about the state of the connection between service consumer and provider.
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  final String provisioningState;
  /// The resource type.
  final String type;

  /// Creates a new [GetPrivateLinkServicePrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [linkIdentifier] The consumer link id.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateEndpoint] The resource of private end point.
  /// [privateEndpointLocation] The location of the private endpoint.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [provisioningState] The provisioning state of the private endpoint connection resource.
  /// [type] The resource type.
  const GetPrivateLinkServicePrivateEndpointConnectionResult({
    required this.azureApiVersion,
    required this.etag,
    this.id,
    required this.linkIdentifier,
    this.name,
    required this.privateEndpoint,
    required this.privateEndpointLocation,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'linkIdentifier': linkIdentifier,
      'name': ?name,
      'privateEndpoint': privateEndpoint.toMap(),
      'privateEndpointLocation': privateEndpointLocation,
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState?.toMap(),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetPrivateLinkServicePrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServicePrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkIdentifier: map['linkIdentifier'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpoint: PrivateEndpointResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>()),
      privateEndpointLocation: map['privateEndpointLocation'] as String,
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}
