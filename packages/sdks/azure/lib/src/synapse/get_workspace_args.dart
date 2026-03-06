// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_workspace_get_workspace_args_doc}
/// Arguments for getWorkspace.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_workspace_get_workspace_args_doc}
class GetWorkspaceArgs {
  /// The name of this Synapse Workspace.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Synapse Workspace exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWorkspaceArgs].
  /// [name] The name of this Synapse Workspace.
  /// [resourceGroupName] The name of the Resource Group where the Synapse Workspace exists.
  const GetWorkspaceArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

