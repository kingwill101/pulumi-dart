// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_integration_runtime_args_doc}
/// The set of arguments for IntegrationRuntime.
/// {@endtemplate}
/// {@macro pulumi_synapse_integration_runtime_args_doc}
class IntegrationRuntimeArgs {
  /// Integration runtime name
  final pulumi.Input<String?>? integrationRuntimeName;
  /// Integration runtime properties.
  final pulumi.Input<dynamic> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IntegrationRuntimeArgs].
  /// [integrationRuntimeName] Integration runtime name
  /// [properties] Integration runtime properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  const IntegrationRuntimeArgs({
    this.integrationRuntimeName,
    required this.properties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationRuntimeName': ?integrationRuntimeName,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory IntegrationRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeArgs(
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(map['properties']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
