// ignore_for_file: unused_element, unnecessary_cast

import 'remote_private_link_service_connection_state.dart';

/// Private Endpoint Connection properties.
class PrivateEndpointConnectionProperties {
  /// State of the Private Link Service connection.
  final RemotePrivateLinkServiceConnectionState? privateLinkServiceConnectionState;
  /// State of Private Endpoint Connection.
  final String? provisioningState;

  /// Creates a new [PrivateEndpointConnectionProperties].
  /// [privateLinkServiceConnectionState] State of the Private Link Service connection.
  /// [provisioningState] State of Private Endpoint Connection.
  PrivateEndpointConnectionProperties({
    this.privateLinkServiceConnectionState,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnectionProperties.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProperties(
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : RemotePrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
    );
  }
}

