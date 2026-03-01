// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_workspace_sql_aad_admin_args_doc}
/// Arguments for getWorkspaceSqlAadAdmin.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_workspace_sql_aad_admin_args_doc}
class GetWorkspaceSqlAadAdminArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWorkspaceSqlAadAdminArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetWorkspaceSqlAadAdminArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetWorkspaceSqlAadAdminArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceSqlAadAdminArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

