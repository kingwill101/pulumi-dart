// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// A private endpoint connection
class PrivateEndpointConnection {
  /// Connection state of the private endpoint connection.
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnection].
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  PrivateEndpointConnection({
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory PrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnection(
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

