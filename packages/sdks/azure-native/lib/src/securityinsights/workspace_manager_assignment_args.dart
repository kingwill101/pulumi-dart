// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_item.dart';

/// {@template pulumi_securityinsights_workspace_manager_assignment_args_doc}
/// The set of arguments for WorkspaceManagerAssignment.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_workspace_manager_assignment_args_doc}
class WorkspaceManagerAssignmentArgs {
  /// List of resources included in this workspace manager assignment
  final pulumi.Input<List<AssignmentItem>> items;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the workspace manager group targeted by the workspace manager assignment
  final pulumi.Input<String> targetResourceName;
  /// The name of the workspace manager assignment
  final pulumi.Input<String>? workspaceManagerAssignmentName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [WorkspaceManagerAssignmentArgs].
  /// [items] List of resources included in this workspace manager assignment
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [targetResourceName] The resource name of the workspace manager group targeted by the workspace manager assignment
  /// [workspaceManagerAssignmentName] The name of the workspace manager assignment
  /// [workspaceName] The name of the workspace.
  const WorkspaceManagerAssignmentArgs({
    required this.items,
    required this.resourceGroupName,
    required this.targetResourceName,
    this.workspaceManagerAssignmentName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.mapInputValue<List<AssignmentItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<AssignmentItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'targetResourceName': targetResourceName,
      'workspaceManagerAssignmentName': ?workspaceManagerAssignmentName,
      'workspaceName': workspaceName,
    };
  }

  factory WorkspaceManagerAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceManagerAssignmentArgs(
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<AssignmentItem>(map['items']!, (value) => AssignmentItem.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      targetResourceName: pulumi.Input.fromValue(map['targetResourceName'] as String),
      workspaceManagerAssignmentName: (() { final guardedValue = map['workspaceManagerAssignmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

