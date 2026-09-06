// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state_response.dart';
import 'resource_id_response.dart';

class PrivateEndpointConnectionPropertiesResponse {
  final pulumi.Input<ResourceIdResponse> privateEndpoint;
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse?>? privateLinkServiceConnectionState;
  final pulumi.Input<String> provisioningState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [privateEndpoint] Required.
  /// [privateLinkServiceConnectionState] Optional.
  /// [provisioningState] Required.
  const PrivateEndpointConnectionPropertiesResponse({
    required this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': pulumi.Input.mapInputValue<ResourceIdResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      privateEndpoint: pulumi.Input.fromValue(ResourceIdResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
