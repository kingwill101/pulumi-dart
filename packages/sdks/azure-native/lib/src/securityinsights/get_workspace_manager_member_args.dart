// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_workspace_manager_member_args_doc}
/// Arguments for getWorkspaceManagerMember.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_workspace_manager_member_args_doc}
class GetWorkspaceManagerMemberArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace manager member
  final pulumi.Input<String> workspaceManagerMemberName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWorkspaceManagerMemberArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceManagerMemberName] The name of the workspace manager member
  /// [workspaceName] The name of the workspace.
  GetWorkspaceManagerMemberArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceManagerMemberName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceManagerMemberName = pulumi.Input.asInput<String>(workspaceManagerMemberName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceManagerMemberName': workspaceManagerMemberName,
      'workspaceName': workspaceName,
    };
  }

  factory GetWorkspaceManagerMemberArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagerMemberArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceManagerMemberName: pulumi.Output.create<String>(map['workspaceManagerMemberName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

