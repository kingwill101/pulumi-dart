// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_workspace_application_group_association_workspace_application_group_association_args_doc}
/// The set of arguments for WorkspaceApplicationGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_workspace_application_group_association_workspace_application_group_association_args_doc}
class WorkspaceApplicationGroupAssociationArgs {
  /// The resource ID for the Virtual Desktop Application Group. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationGroupId;
  /// The resource ID for the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceApplicationGroupAssociationArgs].
  /// [applicationGroupId] The resource ID for the Virtual Desktop Application Group. Changing this forces a new resource to be created.
  /// [workspaceId] The resource ID for the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  const WorkspaceApplicationGroupAssociationArgs({
    required this.applicationGroupId,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupId': applicationGroupId,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceApplicationGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApplicationGroupAssociationArgs(
      applicationGroupId: pulumi.Input.fromValue(map['applicationGroupId'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}

