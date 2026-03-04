// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint.dart';
import 'private_link_service_connection_state.dart';

/// {@template pulumi_purview_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_purview_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the account.
  final pulumi.Input<String> accountName;

  /// The private endpoint information.
  final pulumi.Input<PrivateEndpoint>? privateEndpoint;

  /// Name of the private endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;

  /// The private link service connection state.
  final pulumi.Input<PrivateLinkServiceConnectionState>?
  privateLinkServiceConnectionState;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [accountName] The name of the account.
  /// [privateEndpoint] The private endpoint information.
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] The private link service connection state.
  /// [resourceGroupName] The resource group name.
  PrivateEndpointConnectionArgs({
    required this.accountName,
    this.privateEndpoint,
    this.privateEndpointConnectionName,
    this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'privateEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateEndpoint,
            Map<String, dynamic>
          >(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateLinkServiceConnectionState,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateEndpoint.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateEndpointConnectionName: (() {
        final guardedValue = map['privateEndpointConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateLinkServiceConnectionState.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
