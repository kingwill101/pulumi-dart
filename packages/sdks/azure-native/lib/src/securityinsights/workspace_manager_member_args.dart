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
  final pulumi.Input<String>? workspaceManagerMemberName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [WorkspaceManagerMemberArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [targetWorkspaceResourceId] Fully qualified resource ID of the target Sentinel workspace joining the given Sentinel workspace manager
  /// [targetWorkspaceTenantId] Tenant id of the target Sentinel workspace joining the given Sentinel workspace manager
  /// [workspaceManagerMemberName] The name of the workspace manager member
  /// [workspaceName] The name of the workspace.
  WorkspaceManagerMemberArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> targetWorkspaceResourceId,
    required pulumi.Output<String> targetWorkspaceTenantId,
    pulumi.Output<String>? workspaceManagerMemberName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      targetWorkspaceResourceId = pulumi.Input.asInput<String>(targetWorkspaceResourceId),
      targetWorkspaceTenantId = pulumi.Input.asInput<String>(targetWorkspaceTenantId),
      workspaceManagerMemberName = pulumi.Input.asOptionalInput<String>(workspaceManagerMemberName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      targetWorkspaceResourceId: pulumi.Output.create<String>(map['targetWorkspaceResourceId'] as String),
      targetWorkspaceTenantId: pulumi.Output.create<String>(map['targetWorkspaceTenantId'] as String),
      workspaceManagerMemberName: map['workspaceManagerMemberName'] == null ? null : pulumi.Output.create<String>(map['workspaceManagerMemberName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

