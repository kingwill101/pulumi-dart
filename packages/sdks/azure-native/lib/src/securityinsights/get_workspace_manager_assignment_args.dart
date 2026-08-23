// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_workspace_manager_assignment_args_doc}
/// Arguments for getWorkspaceManagerAssignment.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_workspace_manager_assignment_args_doc}
class GetWorkspaceManagerAssignmentArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace manager assignment
  final pulumi.Input<String> workspaceManagerAssignmentName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWorkspaceManagerAssignmentArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceManagerAssignmentName] The name of the workspace manager assignment
  /// [workspaceName] The name of the workspace.
  const GetWorkspaceManagerAssignmentArgs({
    required this.resourceGroupName,
    required this.workspaceManagerAssignmentName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceManagerAssignmentName': workspaceManagerAssignmentName,
      'workspaceName': workspaceName,
    };
  }

  factory GetWorkspaceManagerAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagerAssignmentArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceManagerAssignmentName: pulumi.Input.fromValue(map['workspaceManagerAssignmentName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
