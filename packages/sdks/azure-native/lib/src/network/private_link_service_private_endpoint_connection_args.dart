// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_network_private_link_service_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateLinkServicePrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_network_private_link_service_private_endpoint_connection_args_doc}
class PrivateLinkServicePrivateEndpointConnectionArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the private end point connection.
  final pulumi.Input<String>? peConnectionName;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the private link service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [PrivateLinkServicePrivateEndpointConnectionArgs].
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peConnectionName] The name of the private end point connection.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceName] The name of the private link service.
  PrivateLinkServicePrivateEndpointConnectionArgs({
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    pulumi.Output<String>? peConnectionName,
    pulumi.Output<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      peConnectionName = pulumi.Input.asOptionalInput<String>(peConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asOptionalInput<PrivateLinkServiceConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'peConnectionName': ?peConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory PrivateLinkServicePrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServicePrivateEndpointConnectionArgs(
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peConnectionName: map['peConnectionName'] == null ? null : pulumi.Output.create<String>(map['peConnectionName'] as String),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : pulumi.Output.create<PrivateLinkServiceConnectionState>(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

