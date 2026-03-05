// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_workspace_sql_aad_admin_workspace_sql_aad_admin_args_doc}
/// The set of arguments for WorkspaceSqlAadAdmin.
/// {@endtemplate}
/// {@macro pulumi_synapse_workspace_sql_aad_admin_workspace_sql_aad_admin_args_doc}
class WorkspaceSqlAadAdminArgs {
  /// The login name of the Azure AD SQL Administrator of this Synapse Workspace.
  final pulumi.Input<String> login;
  /// The object id of the Azure AD SQL Administrator of this Synapse Workspace.
  final pulumi.Input<String> objectId;
  /// The ID of the Synapse Workspace where the Azure AD SQL Administrator should be configured.
  final pulumi.Input<String> synapseWorkspaceId;
  /// The tenant id of the Azure AD SQL Administrator of this Synapse Workspace.
  final pulumi.Input<String> tenantId;

  /// Creates a new [WorkspaceSqlAadAdminArgs].
  /// [login] The login name of the Azure AD SQL Administrator of this Synapse Workspace.
  /// [objectId] The object id of the Azure AD SQL Administrator of this Synapse Workspace.
  /// [synapseWorkspaceId] The ID of the Synapse Workspace where the Azure AD SQL Administrator should be configured.
  /// [tenantId] The tenant id of the Azure AD SQL Administrator of this Synapse Workspace.
  WorkspaceSqlAadAdminArgs({
    required this.login,
    required this.objectId,
    required this.synapseWorkspaceId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'login': login,
      'objectId': objectId,
      'synapseWorkspaceId': synapseWorkspaceId,
      'tenantId': tenantId,
    };
  }

  factory WorkspaceSqlAadAdminArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceSqlAadAdminArgs(
      login: pulumi.Input.fromValue(map['login'] as String),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      synapseWorkspaceId: pulumi.Input.fromValue(map['synapseWorkspaceId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

