// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_powerbi_list_workspace_collection_access_keys_args_doc}
/// Arguments for listWorkspaceCollectionAccessKeys.
/// {@endtemplate}
/// {@macro pulumi_powerbi_list_workspace_collection_access_keys_args_doc}
class ListWorkspaceCollectionAccessKeysArgs {
  /// Azure resource group
  final pulumi.Input<String> resourceGroupName;

  /// Power BI Embedded Workspace Collection name
  final pulumi.Input<String> workspaceCollectionName;

  /// Creates a new [ListWorkspaceCollectionAccessKeysArgs].
  /// [resourceGroupName] Azure resource group
  /// [workspaceCollectionName] Power BI Embedded Workspace Collection name
  ListWorkspaceCollectionAccessKeysArgs({
    required this.resourceGroupName,
    required this.workspaceCollectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceCollectionName': workspaceCollectionName,
    };
  }

  factory ListWorkspaceCollectionAccessKeysArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListWorkspaceCollectionAccessKeysArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceCollectionName: pulumi.Input.fromValue(
        map['workspaceCollectionName'] as String,
      ),
    );
  }
}
