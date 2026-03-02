// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceRootDbfsCustomerManagedKey resources.
class WorkspaceRootDbfsCustomerManagedKeyState {
  /// Specifies the Resource ID of the Key Vault which contains the `key_vault_key_id`.
  ///
  /// > **Note:** The `key_vault_id` field only needs to be specified if the Key Vault which contains the `key_vault_key_id` exists in a different subscription than the Databricks Workspace. If the `key_vault_id` field is not specified it is assumed that the `key_vault_key_id` is hosted in the same subscription as the Databricks Workspace. Does not apply to managed HSM vaults.
  ///
  /// > **Note:** If you are using multiple service principals to execute Terraform across subscriptions you will need to add an additional `azure.keyvault.AccessPolicy` resource granting the service principal access to the key vault in that subscription.
  final pulumi.Input<String>? keyVaultId;
  /// The ID of the Key Vault Key to be used.
  final pulumi.Input<String>? keyVaultKeyId;
  /// The Resource ID of the Databricks Workspace.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceRootDbfsCustomerManagedKeyState].
  /// [keyVaultId] Specifies the Resource ID of the Key Vault which contains the `key_vault_key_id`.
  /// [keyVaultKeyId] The ID of the Key Vault Key to be used.
  /// [workspaceId] The Resource ID of the Databricks Workspace.
  WorkspaceRootDbfsCustomerManagedKeyState({
    this.keyVaultId,
    this.keyVaultKeyId,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': ?keyVaultId,
      'keyVaultKeyId': ?keyVaultKeyId,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceRootDbfsCustomerManagedKeyState.fromMap(Map<String, dynamic> map) {
    return WorkspaceRootDbfsCustomerManagedKeyState(
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId']! as String).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId']! as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

