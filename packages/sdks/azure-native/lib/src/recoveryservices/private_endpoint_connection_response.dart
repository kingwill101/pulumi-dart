// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Private Endpoint Connection Response Properties
class PrivateEndpointConnectionResponse {
  /// Group Ids for the Private Endpoint
  final List<String>? groupIds;
  /// Gets or sets private endpoint associated with the private endpoint connection
  final PrivateEndpointResponse? privateEndpoint;
  /// Gets or sets private link service connection state
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Gets or sets provisioning state of the private endpoint connection
  final String? provisioningState;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [groupIds] Group Ids for the Private Endpoint
  /// [privateEndpoint] Gets or sets private endpoint associated with the private endpoint connection
  /// [privateLinkServiceConnectionState] Gets or sets private link service connection state
  /// [provisioningState] Gets or sets provisioning state of the private endpoint connection
  PrivateEndpointConnectionResponse({
    this.groupIds,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
    );
  }
}

