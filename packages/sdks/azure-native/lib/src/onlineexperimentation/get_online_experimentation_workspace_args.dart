// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_onlineexperimentation_get_online_experimentation_workspace_args_doc}
/// Arguments for getOnlineExperimentationWorkspace.
/// {@endtemplate}
/// {@macro pulumi_onlineexperimentation_get_online_experimentation_workspace_args_doc}
class GetOnlineExperimentationWorkspaceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the OnlineExperimentationWorkspace
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetOnlineExperimentationWorkspaceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the OnlineExperimentationWorkspace
  GetOnlineExperimentationWorkspaceArgs({
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetOnlineExperimentationWorkspaceArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOnlineExperimentationWorkspaceArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
