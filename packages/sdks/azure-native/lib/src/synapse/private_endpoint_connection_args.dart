// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_synapse_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_synapse_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Connection state of the private endpoint connection.
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  PrivateEndpointConnectionArgs({
    pulumi.Output<String>? privateEndpointConnectionName,
    pulumi.Output<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asOptionalInput<PrivateLinkServiceConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : pulumi.Output.create<PrivateLinkServiceConnectionState>(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

