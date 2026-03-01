// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_managed_private_endpoint_managed_private_endpoint_args_doc}
/// The set of arguments for ManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_synapse_managed_private_endpoint_managed_private_endpoint_args_doc}
class ManagedPrivateEndpointArgs {
  /// Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Possible values are listed in [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#dns-configuration).
  final pulumi.Input<String> subresourceName;
  /// The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  ///
  /// > **Note:** A Synapse firewall rule including local IP is needed for managing current resource.
  final pulumi.Input<String> synapseWorkspaceId;
  /// The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [ManagedPrivateEndpointArgs].
  /// [name] Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [subresourceName] Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [synapseWorkspaceId] The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ManagedPrivateEndpointArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> subresourceName,
    required pulumi.Output<String> synapseWorkspaceId,
    required pulumi.Output<String> targetResourceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      subresourceName = pulumi.Input.asInput<String>(subresourceName),
      synapseWorkspaceId = pulumi.Input.asInput<String>(synapseWorkspaceId),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'subresourceName': subresourceName,
      'synapseWorkspaceId': synapseWorkspaceId,
      'targetResourceId': targetResourceId,
    };
  }

  factory ManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      subresourceName: pulumi.Output.create<String>(map['subresourceName'] as String),
      synapseWorkspaceId: pulumi.Output.create<String>(map['synapseWorkspaceId'] as String),
      targetResourceId: pulumi.Output.create<String>(map['targetResourceId'] as String),
    );
  }
}

