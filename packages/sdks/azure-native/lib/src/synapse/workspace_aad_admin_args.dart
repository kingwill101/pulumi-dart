// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_workspace_aad_admin_args_doc}
/// The set of arguments for WorkspaceAadAdmin.
/// {@endtemplate}
/// {@macro pulumi_synapse_workspace_aad_admin_args_doc}
class WorkspaceAadAdminArgs {
  /// Workspace active directory administrator type
  final pulumi.Input<String>? administratorType;
  /// Login of the workspace active directory administrator
  final pulumi.Input<String>? login;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Object ID of the workspace active directory administrator
  final pulumi.Input<String>? sid;
  /// Tenant ID of the workspace active directory administrator
  final pulumi.Input<String>? tenantId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [WorkspaceAadAdminArgs].
  /// [administratorType] Workspace active directory administrator type
  /// [login] Login of the workspace active directory administrator
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sid] Object ID of the workspace active directory administrator
  /// [tenantId] Tenant ID of the workspace active directory administrator
  /// [workspaceName] The name of the workspace.
  WorkspaceAadAdminArgs({
    this.administratorType,
    this.login,
    required this.resourceGroupName,
    this.sid,
    this.tenantId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorType': ?administratorType,
      'login': ?login,
      'resourceGroupName': resourceGroupName,
      'sid': ?sid,
      'tenantId': ?tenantId,
      'workspaceName': workspaceName,
    };
  }

  factory WorkspaceAadAdminArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceAadAdminArgs(
      administratorType: map['administratorType'] == null ? null : (map['administratorType']! as String).input(),
      login: map['login'] == null ? null : (map['login']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sid: map['sid'] == null ? null : (map['sid']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

