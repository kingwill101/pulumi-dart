// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_workspace_manager_configuration_args_doc}
/// The set of arguments for WorkspaceManagerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_workspace_manager_configuration_args_doc}
class WorkspaceManagerConfigurationArgs {
  /// The current mode of the workspace manager configuration
  final pulumi.Input<String> mode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace manager configuration
  final pulumi.Input<String>? workspaceManagerConfigurationName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [WorkspaceManagerConfigurationArgs].
  /// [mode] The current mode of the workspace manager configuration
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceManagerConfigurationName] The name of the workspace manager configuration
  /// [workspaceName] The name of the workspace.
  WorkspaceManagerConfigurationArgs({
    required this.mode,
    required this.resourceGroupName,
    this.workspaceManagerConfigurationName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'resourceGroupName': resourceGroupName,
      'workspaceManagerConfigurationName': ?workspaceManagerConfigurationName,
      'workspaceName': workspaceName,
    };
  }

  factory WorkspaceManagerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceManagerConfigurationArgs(
      mode: (map['mode'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceManagerConfigurationName: map['workspaceManagerConfigurationName'] == null ? null : (map['workspaceManagerConfigurationName']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

