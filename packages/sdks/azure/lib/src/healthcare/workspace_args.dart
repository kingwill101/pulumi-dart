// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_workspace_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_healthcare_workspace_workspace_args_doc}
class WorkspaceArgs {
  /// Specifies the Azure Region where the Healthcare Workspace should be created. Changing this forces a new Healthcare Workspace to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name of the Healthcare Workspace. Changing this forces a new Healthcare Workspace to be created.
  final pulumi.Input<String>? name;

  /// Specifies the name of the Resource Group where the Healthcare Workspace should exist. Changing this forces a new Healthcare Workspace to be created.
  final pulumi.Input<String> resourceGroupName;

  /// A mapping of tags to assign to the Healthcare Workspace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkspaceArgs].
  /// [location] Specifies the Azure Region where the Healthcare Workspace should be created. Changing this forces a new Healthcare Workspace to be created.
  /// [name] Specifies the name of the Healthcare Workspace. Changing this forces a new Healthcare Workspace to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Healthcare Workspace should exist. Changing this forces a new Healthcare Workspace to be created.
  /// [tags] A mapping of tags to assign to the Healthcare Workspace.
  WorkspaceArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
