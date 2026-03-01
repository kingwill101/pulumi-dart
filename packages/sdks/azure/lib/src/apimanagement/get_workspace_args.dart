// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_workspace_get_workspace_args_doc}
/// Arguments for getWorkspace.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_workspace_get_workspace_args_doc}
class GetWorkspaceArgs {
  /// The ID of the API Management Workspace.
  final pulumi.Input<String> apiManagementId;
  /// The name of this API Management Workspace.
  final pulumi.Input<String> name;

  /// Creates a new [GetWorkspaceArgs].
  /// [apiManagementId] The ID of the API Management Workspace.
  /// [name] The name of this API Management Workspace.
  GetWorkspaceArgs({
    required pulumi.Output<String> apiManagementId,
    required pulumi.Output<String> name,
  }) :
      apiManagementId = pulumi.Input.asInput<String>(apiManagementId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'name': name,
    };
  }

  factory GetWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceArgs(
      apiManagementId: pulumi.Output.create<String>(map['apiManagementId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

