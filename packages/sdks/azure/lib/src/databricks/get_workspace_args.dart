// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databricks_get_workspace_get_workspace_args_doc}
/// Arguments for getWorkspace.
/// {@endtemplate}
/// {@macro pulumi_databricks_get_workspace_get_workspace_args_doc}
class GetWorkspaceArgs {
  /// The name of the Databricks Workspace.
  final pulumi.Input<String> name;

  /// The Name of the Resource Group where the Databricks Workspace exists.
  final pulumi.Input<String> resourceGroupName;

  /// A mapping of tags to assign to the Databricks Workspace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetWorkspaceArgs].
  /// [name] The name of the Databricks Workspace.
  /// [resourceGroupName] The Name of the Resource Group where the Databricks Workspace exists.
  /// [tags] A mapping of tags to assign to the Databricks Workspace.
  GetWorkspaceArgs({
    required this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
