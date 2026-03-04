// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state.dart';
import 'private_endpoint.dart';

/// {@template pulumi_powerbi_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_powerbi_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the Azure resource.
  final pulumi.Input<String> azureResourceName;

  /// Specifies the private endpoint.
  final pulumi.Input<PrivateEndpoint>? privateEndpoint;

  /// The name of the private endpoint.
  final pulumi.Input<String>? privateEndpointName;

  /// Specifies the connection state.
  final pulumi.Input<ConnectionState>? privateLinkServiceConnectionState;

  /// Provisioning state of the Private Endpoint Connection.
  final pulumi.Input<String>? provisioningState;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [azureResourceName] The name of the Azure resource.
  /// [privateEndpoint] Specifies the private endpoint.
  /// [privateEndpointName] The name of the private endpoint.
  /// [privateLinkServiceConnectionState] Specifies the connection state.
  /// [provisioningState] Provisioning state of the Private Endpoint Connection.
  /// [resourceGroupName] The name of the resource group.
  PrivateEndpointConnectionArgs({
    required this.azureResourceName,
    this.privateEndpoint,
    this.privateEndpointName,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceName': azureResourceName,
      'privateEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateEndpoint,
            Map<String, dynamic>
          >(privateEndpoint, (value) => value.toMap()),
      'privateEndpointName': ?privateEndpointName,
      'privateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionState,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      azureResourceName: pulumi.Input.fromValue(
        map['azureResourceName'] as String,
      ),
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateEndpoint.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateEndpointName: (() {
        final guardedValue = map['privateEndpointName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionState.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
