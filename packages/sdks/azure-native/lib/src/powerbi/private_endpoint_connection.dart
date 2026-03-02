// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state.dart';
import 'private_endpoint.dart';

class PrivateEndpointConnection {
  /// Specifies the private endpoint.
  final pulumi.Input<PrivateEndpoint>? privateEndpoint;
  /// Specifies the connection state.
  final pulumi.Input<ConnectionState>? privateLinkServiceConnectionState;
  /// Provisioning state of the Private Endpoint Connection.
  final pulumi.Input<String>? provisioningState;

  /// Creates a new [PrivateEndpointConnection].
  /// [privateEndpoint] Specifies the private endpoint.
  /// [privateLinkServiceConnectionState] Specifies the connection state.
  /// [provisioningState] Provisioning state of the Private Endpoint Connection.
  PrivateEndpointConnection({
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
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpoint.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (ConnectionState.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
    );
  }
}

