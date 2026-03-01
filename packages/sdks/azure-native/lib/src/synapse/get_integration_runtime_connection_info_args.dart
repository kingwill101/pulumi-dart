// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_integration_runtime_connection_info_args_doc}
/// Arguments for getIntegrationRuntimeConnectionInfo.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_integration_runtime_connection_info_args_doc}
class GetIntegrationRuntimeConnectionInfoArgs {
  /// Integration runtime name
  final pulumi.Input<String> integrationRuntimeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIntegrationRuntimeConnectionInfoArgs].
  /// [integrationRuntimeName] Integration runtime name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetIntegrationRuntimeConnectionInfoArgs({
    required pulumi.Output<String> integrationRuntimeName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      integrationRuntimeName = pulumi.Input.asInput<String>(integrationRuntimeName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationRuntimeName': integrationRuntimeName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIntegrationRuntimeConnectionInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeConnectionInfoArgs(
      integrationRuntimeName: pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

