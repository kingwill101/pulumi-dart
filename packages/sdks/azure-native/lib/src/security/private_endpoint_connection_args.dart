// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_security_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_security_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// The name of the private link resource. Must be unique within the resource group and follow Azure naming conventions.
  final pulumi.Input<String> privateLinkName;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [privateLinkName] The name of the private link resource. Must be unique within the resource group and follow Azure naming conventions.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PrivateEndpointConnectionArgs({
    pulumi.Output<String>? privateEndpointConnectionName,
    required pulumi.Output<String> privateLinkName,
    required pulumi.Output<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState,
    required pulumi.Output<String> resourceGroupName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkName = pulumi.Input.asInput<String>(privateLinkName),
      privateLinkServiceConnectionState = pulumi.Input.asInput<PrivateLinkServiceConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkName': privateLinkName,
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkName: pulumi.Output.create<String>(map['privateLinkName'] as String),
      privateLinkServiceConnectionState: pulumi.Output.create<PrivateLinkServiceConnectionState>(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

