// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_property_response.dart';
import 'private_link_service_connection_state_property_response.dart';

/// Properties of a private endpoint connection.
class PrivateEndpointConnectionPropertiesResponse {
  /// Group IDs.
  final pulumi.Input<List<String>> groupIds;
  /// Private endpoint which the connection belongs to.
  final pulumi.Input<PrivateEndpointPropertyResponse>? privateEndpoint;
  /// Connection state of the private endpoint connection.
  final pulumi.Input<PrivateLinkServiceConnectionStatePropertyResponse>? privateLinkServiceConnectionState;
  /// State of the private endpoint connection.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [groupIds] Group IDs.
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  /// [provisioningState] State of the private endpoint connection.
  PrivateEndpointConnectionPropertiesResponse({
    required this.groupIds,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': groupIds,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointPropertyResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStatePropertyResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      groupIds: ((map['groupIds'] as List).cast<String>()).input(),
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpointPropertyResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionStatePropertyResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

