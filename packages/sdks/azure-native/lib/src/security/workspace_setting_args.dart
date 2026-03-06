// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_workspace_setting_args_doc}
/// The set of arguments for WorkspaceSetting.
/// {@endtemplate}
/// {@macro pulumi_security_workspace_setting_args_doc}
class WorkspaceSettingArgs {
  /// All the VMs in this scope will send their security data to the mentioned workspace unless overridden by a setting with more specific scope
  final pulumi.Input<String> scope;
  /// The full Azure ID of the workspace to save the data in
  final pulumi.Input<String> workspaceId;
  /// Name of the security setting
  final pulumi.Input<String>? workspaceSettingName;

  /// Creates a new [WorkspaceSettingArgs].
  /// [scope] All the VMs in this scope will send their security data to the mentioned workspace unless overridden by a setting with more specific scope
  /// [workspaceId] The full Azure ID of the workspace to save the data in
  /// [workspaceSettingName] Name of the security setting
  const WorkspaceSettingArgs({
    required this.scope,
    required this.workspaceId,
    this.workspaceSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
      'workspaceId': workspaceId,
      'workspaceSettingName': ?workspaceSettingName,
    };
  }

  factory WorkspaceSettingArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceSettingArgs(
      scope: pulumi.Input.fromValue(map['scope'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
      workspaceSettingName: (() { final guardedValue = map['workspaceSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

