// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databricks_workspace_customer_managed_key_workspace_customer_managed_key_args_doc}
/// The set of arguments for WorkspaceCustomerManagedKey.
/// {@endtemplate}
/// {@macro pulumi_databricks_workspace_customer_managed_key_workspace_customer_managed_key_args_doc}
class WorkspaceCustomerManagedKeyArgs {
  final pulumi.Input<String> keyVaultKeyId;
  /// The unique identifier of the databricks workspace in Databricks control plane.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceCustomerManagedKeyArgs].
  /// [keyVaultKeyId] Required.
  /// [workspaceId] The unique identifier of the databricks workspace in Databricks control plane.
  const WorkspaceCustomerManagedKeyArgs({
    required this.keyVaultKeyId,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceCustomerManagedKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomerManagedKeyArgs(
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}

