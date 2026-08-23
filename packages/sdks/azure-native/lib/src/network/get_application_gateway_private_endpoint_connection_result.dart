// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Result data returned by getApplicationGatewayPrivateEndpointConnection.
class GetApplicationGatewayPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The consumer link id.
  final String linkIdentifier;
  /// Name of the private endpoint connection on an application gateway.
  final String? name;
  /// The resource of private end point.
  final PrivateEndpointResponse privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// The provisioning state of the application gateway private endpoint connection resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetApplicationGatewayPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [linkIdentifier] The consumer link id.
  /// [name] Name of the private endpoint connection on an application gateway.
  /// [privateEndpoint] The resource of private end point.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [provisioningState] The provisioning state of the application gateway private endpoint connection resource.
  /// [type] Type of the resource.
  const GetApplicationGatewayPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    required this.etag,
    this.id,
    required this.linkIdentifier,
    this.name,
    required this.privateEndpoint,
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
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState?.toMap(),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetApplicationGatewayPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkIdentifier: map['linkIdentifier'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpoint: PrivateEndpointResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}
