// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quantum_list_workspace_keys_args_doc}
/// Arguments for listWorkspaceKeys.
/// {@endtemplate}
/// {@macro pulumi_quantum_list_workspace_keys_args_doc}
class ListWorkspaceKeysArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the quantum workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListWorkspaceKeysArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the quantum workspace resource.
  const ListWorkspaceKeysArgs({
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListWorkspaceKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceKeysArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
