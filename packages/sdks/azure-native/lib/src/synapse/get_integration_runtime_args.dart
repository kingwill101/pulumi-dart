// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_integration_runtime_args_doc}
/// Arguments for getIntegrationRuntime.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_integration_runtime_args_doc}
class GetIntegrationRuntimeArgs {
  /// Integration runtime name
  final pulumi.Input<String> integrationRuntimeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIntegrationRuntimeArgs].
  /// [integrationRuntimeName] Integration runtime name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  const GetIntegrationRuntimeArgs({
    required this.integrationRuntimeName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationRuntimeName': integrationRuntimeName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIntegrationRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeArgs(
      integrationRuntimeName: pulumi.Input.fromValue(map['integrationRuntimeName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
