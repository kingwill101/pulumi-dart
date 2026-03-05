// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceKey resources.
class WorkspaceKeyState {
  /// Specifies if the workspace should be encrypted with this key.
  ///
  /// &gt; **Note:** Only one key can actively encrypt a workspace. When performing a key rotation, setting a new key as the active key will disable existing keys.
  final pulumi.Input<bool>? active;
  /// Specifies the name of the workspace key. Should match the name of the key in the synapse workspace.
  final pulumi.Input<String>? customerManagedKeyName;
  /// The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption
  final pulumi.Input<String>? customerManagedKeyVersionlessId;
  /// The ID of the Synapse Workspace where the encryption key should be configured.
  final pulumi.Input<String>? synapseWorkspaceId;

  /// Creates a new [WorkspaceKeyState].
  /// [active] Specifies if the workspace should be encrypted with this key.
  /// [customerManagedKeyName] Specifies the name of the workspace key. Should match the name of the key in the synapse workspace.
  /// [customerManagedKeyVersionlessId] The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption
  /// [synapseWorkspaceId] The ID of the Synapse Workspace where the encryption key should be configured.
  WorkspaceKeyState({
    this.active,
    this.customerManagedKeyName,
    this.customerManagedKeyVersionlessId,
    this.synapseWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'customerManagedKeyName': ?customerManagedKeyName,
      'customerManagedKeyVersionlessId': ?customerManagedKeyVersionlessId,
      'synapseWorkspaceId': ?synapseWorkspaceId,
    };
  }

  factory WorkspaceKeyState.fromMap(Map<String, dynamic> map) {
    return WorkspaceKeyState(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customerManagedKeyName: (() { final guardedValue = map['customerManagedKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKeyVersionlessId: (() { final guardedValue = map['customerManagedKeyVersionlessId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synapseWorkspaceId: (() { final guardedValue = map['synapseWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

