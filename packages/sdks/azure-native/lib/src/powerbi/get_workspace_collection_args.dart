// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_powerbi_get_workspace_collection_args_doc}
/// Arguments for getWorkspaceCollection.
/// {@endtemplate}
/// {@macro pulumi_powerbi_get_workspace_collection_args_doc}
class GetWorkspaceCollectionArgs {
  /// Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Power BI Embedded Workspace Collection name
  final pulumi.Input<String> workspaceCollectionName;

  /// Creates a new [GetWorkspaceCollectionArgs].
  /// [resourceGroupName] Azure resource group
  /// [workspaceCollectionName] Power BI Embedded Workspace Collection name
  const GetWorkspaceCollectionArgs({
    required this.resourceGroupName,
    required this.workspaceCollectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceCollectionName': workspaceCollectionName,
    };
  }

  factory GetWorkspaceCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceCollectionArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceCollectionName: pulumi.Input.fromValue(map['workspaceCollectionName'] as String),
    );
  }
}
