// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databricks_workspace_root_dbfs_customer_managed_key_workspace_root_dbfs_customer_managed_key_args_doc}
/// The set of arguments for WorkspaceRootDbfsCustomerManagedKey.
/// {@endtemplate}
/// {@macro pulumi_databricks_workspace_root_dbfs_customer_managed_key_workspace_root_dbfs_customer_managed_key_args_doc}
class WorkspaceRootDbfsCustomerManagedKeyArgs {
  /// Specifies the Resource ID of the Key Vault which contains the `keyVaultKeyId`.
  ///
  /// &gt; **Note:** The `keyVaultId` field only needs to be specified if the Key Vault which contains the `keyVaultKeyId` exists in a different subscription than the Databricks Workspace. If the `keyVaultId` field is not specified it is assumed that the `keyVaultKeyId` is hosted in the same subscription as the Databricks Workspace. Does not apply to managed HSM vaults.
  ///
  /// &gt; **Note:** If you are using multiple service principals to execute Terraform across subscriptions you will need to add an additional `azure.keyvault.AccessPolicy` resource granting the service principal access to the key vault in that subscription.
  final pulumi.Input<String?>? keyVaultId;
  /// The ID of the Key Vault Key to be used.
  final pulumi.Input<String> keyVaultKeyId;
  /// The Resource ID of the Databricks Workspace.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceRootDbfsCustomerManagedKeyArgs].
  /// [keyVaultId] Specifies the Resource ID of the Key Vault which contains the `keyVaultKeyId`.
  /// [keyVaultKeyId] The ID of the Key Vault Key to be used.
  /// [workspaceId] The Resource ID of the Databricks Workspace.
  const WorkspaceRootDbfsCustomerManagedKeyArgs({
    this.keyVaultId,
    required this.keyVaultKeyId,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': ?keyVaultId,
      'keyVaultKeyId': keyVaultKeyId,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceRootDbfsCustomerManagedKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceRootDbfsCustomerManagedKeyArgs(
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
