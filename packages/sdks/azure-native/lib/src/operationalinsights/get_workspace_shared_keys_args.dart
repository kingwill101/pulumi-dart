// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_workspace_shared_keys_args_doc}
/// Arguments for getWorkspaceSharedKeys.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_workspace_shared_keys_args_doc}
class GetWorkspaceSharedKeysArgs {
  /// The name of the resource group to get. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Log Analytics Workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWorkspaceSharedKeysArgs].
  /// [resourceGroupName] The name of the resource group to get. The name is case insensitive.
  /// [workspaceName] Name of the Log Analytics Workspace.
  GetWorkspaceSharedKeysArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetWorkspaceSharedKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceSharedKeysArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

