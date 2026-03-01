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
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<List<String>> memberResourceNames,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? workspaceManagerGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      memberResourceNames = pulumi.Input.asInput<List<String>>(memberResourceNames),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceManagerGroupName = pulumi.Input.asOptionalInput<String>(workspaceManagerGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      memberResourceNames: pulumi.Output.create<List<String>>((map['memberResourceNames'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceManagerGroupName: map['workspaceManagerGroupName'] == null ? null : pulumi.Output.create<String>(map['workspaceManagerGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

