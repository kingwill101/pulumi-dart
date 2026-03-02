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
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointName': ?privateEndpointName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<ConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      azureResourceName: (map['azureResourceName'] as String).input(),
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpoint.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())).input(),
      privateEndpointName: map['privateEndpointName'] == null ? null : (map['privateEndpointName']! as String).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (ConnectionState.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

