// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_list_integration_runtime_auth_key_args_doc}
/// Arguments for listIntegrationRuntimeAuthKey.
/// {@endtemplate}
/// {@macro pulumi_synapse_list_integration_runtime_auth_key_args_doc}
class ListIntegrationRuntimeAuthKeyArgs {
  /// Integration runtime name
  final pulumi.Input<String> integrationRuntimeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListIntegrationRuntimeAuthKeyArgs].
  /// [integrationRuntimeName] Integration runtime name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  ListIntegrationRuntimeAuthKeyArgs({
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

  factory ListIntegrationRuntimeAuthKeyArgs.fromMap(Map<String, dynamic> map) {
    return ListIntegrationRuntimeAuthKeyArgs(
      integrationRuntimeName: (map['integrationRuntimeName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

