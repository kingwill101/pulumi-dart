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
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [accountName] The name of the account.
  /// [privateEndpoint] The private endpoint information.
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] The private link service connection state.
  /// [resourceGroupName] The resource group name.
  PrivateEndpointConnectionArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<PrivateEndpoint>? privateEndpoint,
    pulumi.Output<String>? privateEndpointConnectionName,
    pulumi.Output<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      privateEndpoint = pulumi.Input.asOptionalInput<PrivateEndpoint>(privateEndpoint),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asOptionalInput<PrivateLinkServiceConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      privateEndpoint: map['privateEndpoint'] == null ? null : pulumi.Output.create<PrivateEndpoint>(PrivateEndpoint.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : pulumi.Output.create<PrivateLinkServiceConnectionState>(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

