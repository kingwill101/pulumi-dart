// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_private_link_service_connection_state.dart';

/// Private Endpoint Connection properties.
class PrivateEndpointConnectionProperties {
  /// State of the Private Link Service connection.
  final pulumi.Input<RemotePrivateLinkServiceConnectionState>?
  privateLinkServiceConnectionState;

  /// State of Private Endpoint Connection.
  final pulumi.Input<String>? provisioningState;

  /// Creates a new [PrivateEndpointConnectionProperties].
  /// [privateLinkServiceConnectionState] State of the Private Link Service connection.
  /// [provisioningState] State of Private Endpoint Connection.
  PrivateEndpointConnectionProperties({
    this.privateLinkServiceConnectionState,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            RemotePrivateLinkServiceConnectionState,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnectionProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateEndpointConnectionProperties(
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RemotePrivateLinkServiceConnectionState.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
