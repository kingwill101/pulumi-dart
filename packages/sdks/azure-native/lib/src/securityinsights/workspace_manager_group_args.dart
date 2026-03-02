// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_workspace_manager_group_args_doc}
/// The set of arguments for WorkspaceManagerGroup.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_workspace_manager_group_args_doc}
class WorkspaceManagerGroupArgs {
  /// The description of the workspace manager group
  final pulumi.Input<String>? description;
  /// The display name of the workspace manager group
  final pulumi.Input<String> displayName;
  /// The names of the workspace manager members participating in this group.
  final pulumi.Input<List<String>> memberResourceNames;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace manager group
  final pulumi.Input<String>? workspaceManagerGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [WorkspaceManagerGroupArgs].
  /// [description] The description of the workspace manager group
  /// [displayName] The display name of the workspace manager group
  /// [memberResourceNames] The names of the workspace manager members participating in this group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceManagerGroupName] The name of the workspace manager group
  /// [workspaceName] The name of the workspace.
  WorkspaceManagerGroupArgs({
    this.description,
    required this.displayName,
    required this.memberResourceNames,
    required this.resourceGroupName,
    this.workspaceManagerGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'memberResourceNames': memberResourceNames,
      'resourceGroupName': resourceGroupName,
      'workspaceManagerGroupName': ?workspaceManagerGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory WorkspaceManagerGroupArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceManagerGroupArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      memberResourceNames: ((map['memberResourceNames'] as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceManagerGroupName: map['workspaceManagerGroupName'] == null ? null : (map['workspaceManagerGroupName']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

