// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_workspace_get_workspace_args_doc}
/// Arguments for getWorkspace.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_workspace_get_workspace_args_doc}
class GetWorkspaceArgs {
  /// Specifies the name of the Workspace.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Workspace is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWorkspaceArgs].
  /// [name] Specifies the name of the Workspace.
  /// [resourceGroupName] Specifies the name of the resource group the Workspace is located in.
  GetWorkspaceArgs({
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
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

