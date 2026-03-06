// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_workspace_args_doc}
class WorkspaceArgs {
  /// Specifies the ID of the API Management Service in which the API Management Workspace should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementId;
  /// The description of the API Management Workspace.
  final pulumi.Input<String>? description;
  /// The display name of the API Management Workspace.
  final pulumi.Input<String> displayName;
  /// Specifies the name which should be used for this API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [WorkspaceArgs].
  /// [apiManagementId] Specifies the ID of the API Management Service in which the API Management Workspace should be created. Changing this forces a new resource to be created.
  /// [description] The description of the API Management Workspace.
  /// [displayName] The display name of the API Management Workspace.
  /// [name] Specifies the name which should be used for this API Management Workspace. Changing this forces a new resource to be created.
  const WorkspaceArgs({
    required this.apiManagementId,
    this.description,
    required this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'description': ?description,
      'displayName': displayName,
      'name': ?name,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      apiManagementId: pulumi.Input.fromValue(map['apiManagementId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

