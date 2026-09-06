// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state.dart';
import 'private_endpoint.dart';

/// Properties of the PrivateEndpointConnection.
class PrivateEndpointConnection {
  /// The Private Endpoint resource for this Connection.
  final pulumi.Input<PrivateEndpoint?>? privateEndpoint;
  /// Details about the state of the connection.
  final pulumi.Input<ConnectionState?>? privateLinkServiceConnectionState;
  /// Provisioning state of the Private Endpoint Connection.
  final pulumi.Input<dynamic>? provisioningState;

  /// Creates a new [PrivateEndpointConnection].
  /// [privateEndpoint] The Private Endpoint resource for this Connection.
  /// [privateLinkServiceConnectionState] Details about the state of the connection.
  /// [provisioningState] Provisioning state of the Private Endpoint Connection.
  const PrivateEndpointConnection({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<ConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnection(
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
