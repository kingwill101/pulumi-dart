// ignore_for_file: unused_element, unnecessary_cast

import 'remote_private_endpoint_connection_response.dart';
import 'remote_private_link_service_connection_state_response.dart';

/// Private Endpoint Connection properties.
class PrivateEndpointConnectionPropertiesResponse {
  /// List of group ids. For Notification Hubs, it always contains a single "namespace" element.
  final List<String> groupIds;
  /// Represents a Private Endpoint that is connected to Notification Hubs namespace using Private Endpoint Connection.
  final RemotePrivateEndpointConnectionResponse? privateEndpoint;
  /// State of the Private Link Service connection.
  final RemotePrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// State of Private Endpoint Connection.
  final String? provisioningState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [groupIds] List of group ids. For Notification Hubs, it always contains a single "namespace" element.
  /// [privateEndpoint] Represents a Private Endpoint that is connected to Notification Hubs namespace using Private Endpoint Connection.
  /// [privateLinkServiceConnectionState] State of the Private Link Service connection.
  /// [provisioningState] State of Private Endpoint Connection.
  PrivateEndpointConnectionPropertiesResponse({
    required this.groupIds,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': groupIds,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      groupIds: (map['groupIds'] as List).cast<String>(),
      privateEndpoint: map['privateEndpoint'] == null ? null : RemotePrivateEndpointConnectionResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : RemotePrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
    );
  }
}

