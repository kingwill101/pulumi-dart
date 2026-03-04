// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'vault_private_link_service_connection_state_response.dart';

/// Private Endpoint Connection Response Properties.
class VaultPrivateEndpointConnectionResponse {
  /// Group Ids for the Private Endpoint
  final pulumi.Input<List<String>>? groupIds;

  /// The Private Endpoint network resource that is linked to the Private Endpoint connection.
  final pulumi.Input<PrivateEndpointResponse> privateEndpoint;

  /// Gets or sets private link service connection state.
  final pulumi.Input<VaultPrivateLinkServiceConnectionStateResponse>
  privateLinkServiceConnectionState;

  /// Gets or sets provisioning state of the private endpoint connection.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [VaultPrivateEndpointConnectionResponse].
  /// [groupIds] Group Ids for the Private Endpoint
  /// [privateEndpoint] The Private Endpoint network resource that is linked to the Private Endpoint connection.
  /// [privateLinkServiceConnectionState] Gets or sets private link service connection state.
  /// [provisioningState] Gets or sets provisioning state of the private endpoint connection.
  VaultPrivateEndpointConnectionResponse({
    this.groupIds,
    required this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint':
          pulumi.Input.mapInputValue<
            PrivateEndpointResponse,
            Map<String, dynamic>
          >(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState':
          pulumi.Input.mapInputValue<
            VaultPrivateLinkServiceConnectionStateResponse,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory VaultPrivateEndpointConnectionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VaultPrivateEndpointConnectionResponse(
      groupIds: (() {
        final guardedValue = map['groupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      privateEndpoint: pulumi.Input.fromValue(
        PrivateEndpointResponse.fromMap(
          (map['privateEndpoint']! as Map).cast<String, dynamic>(),
        ),
      ),
      privateLinkServiceConnectionState: pulumi.Input.fromValue(
        VaultPrivateLinkServiceConnectionStateResponse.fromMap(
          (map['privateLinkServiceConnectionState']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
