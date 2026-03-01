// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedPrivateEndpoint resources.
class ManagedPrivateEndpointState {
  /// Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Possible values are listed in [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#dns-configuration).
  final pulumi.Input<String>? subresourceName;
  /// The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  ///
  /// > **Note:** A Synapse firewall rule including local IP is needed for managing current resource.
  final pulumi.Input<String>? synapseWorkspaceId;
  /// The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [ManagedPrivateEndpointState].
  /// [name] Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [subresourceName] Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [synapseWorkspaceId] The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ManagedPrivateEndpointState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? subresourceName,
    pulumi.Output<String>? synapseWorkspaceId,
    pulumi.Output<String>? targetResourceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      subresourceName = pulumi.Input.asOptionalInput<String>(subresourceName),
      synapseWorkspaceId = pulumi.Input.asOptionalInput<String>(synapseWorkspaceId),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'subresourceName': ?subresourceName,
      'synapseWorkspaceId': ?synapseWorkspaceId,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory ManagedPrivateEndpointState.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      subresourceName: map['subresourceName'] == null ? null : pulumi.Output.create<String>(map['subresourceName'] as String),
      synapseWorkspaceId: map['synapseWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['synapseWorkspaceId'] as String),
      targetResourceId: map['targetResourceId'] == null ? null : pulumi.Output.create<String>(map['targetResourceId'] as String),
    );
  }
}

