// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_workspace_manager_configuration_args_doc}
/// Arguments for getWorkspaceManagerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_workspace_manager_configuration_args_doc}
class GetWorkspaceManagerConfigurationArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace manager configuration
  final pulumi.Input<String> workspaceManagerConfigurationName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWorkspaceManagerConfigurationArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceManagerConfigurationName] The name of the workspace manager configuration
  /// [workspaceName] The name of the workspace.
  GetWorkspaceManagerConfigurationArgs({
    required this.resourceGroupName,
    required this.workspaceManagerConfigurationName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceManagerConfigurationName': workspaceManagerConfigurationName,
      'workspaceName': workspaceName,
    };
  }

  factory GetWorkspaceManagerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagerConfigurationArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceManagerConfigurationName: (map['workspaceManagerConfigurationName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

