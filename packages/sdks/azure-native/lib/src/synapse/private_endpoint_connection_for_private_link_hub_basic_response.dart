// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Private Endpoint Connection For Private Link Hub - Basic
class PrivateEndpointConnectionForPrivateLinkHubBasicResponse {
  /// identifier
  final pulumi.Input<String> id;
  /// The private endpoint which the connection belongs to.
  final pulumi.Input<PrivateEndpointResponse>? privateEndpoint;
  /// Connection state of the private endpoint connection.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse>? privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [PrivateEndpointConnectionForPrivateLinkHubBasicResponse].
  /// [id] identifier
  /// [privateEndpoint] The private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  /// [provisioningState] Provisioning state of the private endpoint connection.
  PrivateEndpointConnectionForPrivateLinkHubBasicResponse({
    required this.id,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionForPrivateLinkHubBasicResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionForPrivateLinkHubBasicResponse(
      id: (map['id'] as String).input(),
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpointResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

