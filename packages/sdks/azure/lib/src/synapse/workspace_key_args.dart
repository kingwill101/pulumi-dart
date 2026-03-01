// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_workspace_key_workspace_key_args_doc}
/// The set of arguments for WorkspaceKey.
/// {@endtemplate}
/// {@macro pulumi_synapse_workspace_key_workspace_key_args_doc}
class WorkspaceKeyArgs {
  /// Specifies if the workspace should be encrypted with this key.
  ///
  /// > **Note:** Only one key can actively encrypt a workspace. When performing a key rotation, setting a new key as the active key will disable existing keys.
  final pulumi.Input<bool> active;
  /// Specifies the name of the workspace key. Should match the name of the key in the synapse workspace.
  final pulumi.Input<String> customerManagedKeyName;
  /// The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption
  final pulumi.Input<String>? customerManagedKeyVersionlessId;
  /// The ID of the Synapse Workspace where the encryption key should be configured.
  final pulumi.Input<String> synapseWorkspaceId;

  /// Creates a new [WorkspaceKeyArgs].
  /// [active] Specifies if the workspace should be encrypted with this key.
  /// [customerManagedKeyName] Specifies the name of the workspace key. Should match the name of the key in the synapse workspace.
  /// [customerManagedKeyVersionlessId] The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption
  /// [synapseWorkspaceId] The ID of the Synapse Workspace where the encryption key should be configured.
  WorkspaceKeyArgs({
    required pulumi.Output<bool> active,
    required pulumi.Output<String> customerManagedKeyName,
    pulumi.Output<String>? customerManagedKeyVersionlessId,
    required pulumi.Output<String> synapseWorkspaceId,
  }) :
      active = pulumi.Input.asInput<bool>(active),
      customerManagedKeyName = pulumi.Input.asInput<String>(customerManagedKeyName),
      customerManagedKeyVersionlessId = pulumi.Input.asOptionalInput<String>(customerManagedKeyVersionlessId),
      synapseWorkspaceId = pulumi.Input.asInput<String>(synapseWorkspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'customerManagedKeyName': customerManagedKeyName,
      'customerManagedKeyVersionlessId': ?customerManagedKeyVersionlessId,
      'synapseWorkspaceId': synapseWorkspaceId,
    };
  }

  factory WorkspaceKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceKeyArgs(
      active: pulumi.Output.create<bool>(map['active'] as bool),
      customerManagedKeyName: pulumi.Output.create<String>(map['customerManagedKeyName'] as String),
      customerManagedKeyVersionlessId: map['customerManagedKeyVersionlessId'] == null ? null : pulumi.Output.create<String>(map['customerManagedKeyVersionlessId'] as String),
      synapseWorkspaceId: pulumi.Output.create<String>(map['synapseWorkspaceId'] as String),
    );
  }
}

