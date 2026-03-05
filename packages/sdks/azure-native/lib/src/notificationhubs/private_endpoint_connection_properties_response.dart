// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_private_endpoint_connection_response.dart';
import 'remote_private_link_service_connection_state_response.dart';

/// Private Endpoint Connection properties.
class PrivateEndpointConnectionPropertiesResponse {
  /// List of group ids. For Notification Hubs, it always contains a single "namespace" element.
  final pulumi.Input<List<String>> groupIds;
  /// Represents a Private Endpoint that is connected to Notification Hubs namespace using Private Endpoint Connection.
  final pulumi.Input<RemotePrivateEndpointConnectionResponse>? privateEndpoint;
  /// State of the Private Link Service connection.
  final pulumi.Input<RemotePrivateLinkServiceConnectionStateResponse>? privateLinkServiceConnectionState;
  /// State of Private Endpoint Connection.
  final pulumi.Input<String>? provisioningState;

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
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<RemotePrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<RemotePrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      groupIds: pulumi.Input.fromValue((map['groupIds'] as List).cast<String>()),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemotePrivateEndpointConnectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemotePrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

