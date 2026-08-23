// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedPrivateEndpoint resources.
class ManagedPrivateEndpointState {
  /// A list of fully qualified domain names to assign to the Synapse Private Endpoint. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `fullyQualifiedDomainNames` must be specified when the `targetResourceId` is a Private Link Service.
  final pulumi.Input<List<String>>? fullyQualifiedDomainNames;
  /// Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Possible values are listed in [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#dns-configuration).
  final pulumi.Input<String>? subresourceName;
  /// The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** A Synapse firewall rule including local IP is needed for managing current resource.
  final pulumi.Input<String>? synapseWorkspaceId;
  /// The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [ManagedPrivateEndpointState].
  /// [fullyQualifiedDomainNames] A list of fully qualified domain names to assign to the Synapse Private Endpoint. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [subresourceName] Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [synapseWorkspaceId] The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created.
  const ManagedPrivateEndpointState({
    this.fullyQualifiedDomainNames,
    this.name,
    this.subresourceName,
    this.synapseWorkspaceId,
    this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullyQualifiedDomainNames': ?fullyQualifiedDomainNames,
      'name': ?name,
      'subresourceName': ?subresourceName,
      'synapseWorkspaceId': ?synapseWorkspaceId,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory ManagedPrivateEndpointState.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointState(
      fullyQualifiedDomainNames: (() { final guardedValue = map['fullyQualifiedDomainNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subresourceName: (() { final guardedValue = map['subresourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synapseWorkspaceId: (() { final guardedValue = map['synapseWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceId: (() { final guardedValue = map['targetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
