// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_private_endpoint_property_response.dart';
import 'managed_instance_private_link_service_connection_state_property_response.dart';

/// Properties of a private endpoint connection.
class ManagedInstancePrivateEndpointConnectionPropertiesResponse {
  /// Private endpoint which the connection belongs to.
  final pulumi.Input<ManagedInstancePrivateEndpointPropertyResponse>? privateEndpoint;
  /// Connection State of the Private Endpoint Connection.
  final pulumi.Input<ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse>? privateLinkServiceConnectionState;
  /// State of the Private Endpoint Connection.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ManagedInstancePrivateEndpointConnectionPropertiesResponse].
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection State of the Private Endpoint Connection.
  /// [provisioningState] State of the Private Endpoint Connection.
  const ManagedInstancePrivateEndpointConnectionPropertiesResponse({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<ManagedInstancePrivateEndpointPropertyResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ManagedInstancePrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedInstancePrivateEndpointConnectionPropertiesResponse(
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedInstancePrivateEndpointPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

