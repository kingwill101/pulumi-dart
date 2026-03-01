// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_state_response.dart';
import 'resource_id_response.dart';

class PrivateEndpointConnectionPropertiesResponse {
  final ResourceIdResponse privateEndpoint;
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  final String provisioningState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [privateEndpoint] Required.
  /// [privateLinkServiceConnectionState] Optional.
  /// [provisioningState] Required.
  PrivateEndpointConnectionPropertiesResponse({
    required this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': privateEndpoint.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      privateEndpoint: ResourceIdResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

