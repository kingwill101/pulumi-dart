// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_workspace_manager_member_args_doc}
/// The set of arguments for WorkspaceManagerMember.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_workspace_manager_member_args_doc}
class WorkspaceManagerMemberArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Fully qualified resource ID of the target Sentinel workspace joining the given Sentinel workspace manager
  final pulumi.Input<String> targetWorkspaceResourceId;
  /// Tenant id of the target Sentinel workspace joining the given Sentinel workspace manager
  final pulumi.Input<String> targetWorkspaceTenantId;
  /// The name of the workspace manager member
  final pulumi.Input<String?>? workspaceManagerMemberName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [WorkspaceManagerMemberArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [targetWorkspaceResourceId] Fully qualified resource ID of the target Sentinel workspace joining the given Sentinel workspace manager
  /// [targetWorkspaceTenantId] Tenant id of the target Sentinel workspace joining the given Sentinel workspace manager
  /// [workspaceManagerMemberName] The name of the workspace manager member
  /// [workspaceName] The name of the workspace.
  const WorkspaceManagerMemberArgs({
    required this.resourceGroupName,
    required this.targetWorkspaceResourceId,
    required this.targetWorkspaceTenantId,
    this.workspaceManagerMemberName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'targetWorkspaceResourceId': targetWorkspaceResourceId,
      'targetWorkspaceTenantId': targetWorkspaceTenantId,
      'workspaceManagerMemberName': ?workspaceManagerMemberName,
      'workspaceName': workspaceName,
    };
  }

  factory WorkspaceManagerMemberArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceManagerMemberArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      targetWorkspaceResourceId: pulumi.Input.fromValue(map['targetWorkspaceResourceId'] as String),
      targetWorkspaceTenantId: pulumi.Input.fromValue(map['targetWorkspaceTenantId'] as String),
      workspaceManagerMemberName: (() { final guardedValue = map['workspaceManagerMemberName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
