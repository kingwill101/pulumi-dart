// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint.dart';
import 'private_link_service_connection_state.dart';

/// Private Endpoint Connection Response Properties
class PrivateEndpointConnection {
  /// Group Ids for the Private Endpoint
  final pulumi.Input<List<String>>? groupIds;
  /// Gets or sets private endpoint associated with the private endpoint connection
  final pulumi.Input<PrivateEndpoint>? privateEndpoint;
  /// Gets or sets private link service connection state
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// Gets or sets provisioning state of the private endpoint connection
  final pulumi.Input<String>? provisioningState;

  /// Creates a new [PrivateEndpointConnection].
  /// [groupIds] Group Ids for the Private Endpoint
  /// [privateEndpoint] Gets or sets private endpoint associated with the private endpoint connection
  /// [privateLinkServiceConnectionState] Gets or sets private link service connection state
  /// [provisioningState] Gets or sets provisioning state of the private endpoint connection
  const PrivateEndpointConnection({
    this.groupIds,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnection(
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServiceConnectionState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
