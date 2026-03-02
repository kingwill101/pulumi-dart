// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_workspace_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_workspace_workspace_args_doc}
class WorkspaceArgs {
  /// The scope of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope.
  final pulumi.Input<String> scope;
  /// The ID of the Log Analytics Workspace to save the data in.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceArgs].
  /// [scope] The scope of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope.
  /// [workspaceId] The ID of the Log Analytics Workspace to save the data in.
  WorkspaceArgs({
    required this.scope,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      scope: (map['scope'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

