// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state.dart';
import 'private_endpoint.dart';

/// {@template pulumi_servicebus_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_servicebus_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The Private Endpoint resource for this Connection.
  final pulumi.Input<PrivateEndpoint>? privateEndpoint;
  /// The PrivateEndpointConnection name
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Details about the state of the connection.
  final pulumi.Input<ConnectionState>? privateLinkServiceConnectionState;
  /// Provisioning state of the Private Endpoint Connection.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [namespaceName] The namespace name
  /// [privateEndpoint] The Private Endpoint resource for this Connection.
  /// [privateEndpointConnectionName] The PrivateEndpointConnection name
  /// [privateLinkServiceConnectionState] Details about the state of the connection.
  /// [provisioningState] Provisioning state of the Private Endpoint Connection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PrivateEndpointConnectionArgs({
    required pulumi.Output<String> namespaceName,
    pulumi.Output<PrivateEndpoint>? privateEndpoint,
    pulumi.Output<String>? privateEndpointConnectionName,
    pulumi.Output<ConnectionState>? privateLinkServiceConnectionState,
    pulumi.Output<String>? provisioningState,
    required pulumi.Output<String> resourceGroupName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      privateEndpoint = pulumi.Input.asOptionalInput<PrivateEndpoint>(privateEndpoint),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asOptionalInput<ConnectionState>(privateLinkServiceConnectionState),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<ConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      privateEndpoint: map['privateEndpoint'] == null ? null : pulumi.Output.create<PrivateEndpoint>(PrivateEndpoint.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : pulumi.Output.create<ConnectionState>(ConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

