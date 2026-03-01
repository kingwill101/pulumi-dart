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
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

