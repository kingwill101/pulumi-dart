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
  GetWorkspaceManagerAssignmentArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceManagerAssignmentName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceManagerAssignmentName = pulumi.Input.asInput<String>(workspaceManagerAssignmentName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceManagerAssignmentName': workspaceManagerAssignmentName,
      'workspaceName': workspaceName,
    };
  }

  factory GetWorkspaceManagerAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagerAssignmentArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceManagerAssignmentName: pulumi.Output.create<String>(map['workspaceManagerAssignmentName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

