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
    required this.resourceGroupName,
    required this.workspaceManagerMemberName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceManagerMemberName': workspaceManagerMemberName,
      'workspaceName': workspaceName,
    };
  }

  factory GetWorkspaceManagerMemberArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagerMemberArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceManagerMemberName: pulumi.Input.fromValue(
        map['workspaceManagerMemberName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
