// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_workspace_args_doc}
class WorkspaceArgs {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  /// Required. The ID to use for the workspace, which will become the final component of the workspace's resource name.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceArgs].
  /// [location] Optional.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [workspaceId] Required. The ID to use for the workspace, which will become the final component of the workspace's resource name.
  WorkspaceArgs({
    this.location,
    this.project,
    required this.repositoryId,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'repositoryId': repositoryId,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
