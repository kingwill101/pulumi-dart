// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_integration_runtime_object_metadatum_args_doc}
/// Arguments for getIntegrationRuntimeObjectMetadatum.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_integration_runtime_object_metadatum_args_doc}
class GetIntegrationRuntimeObjectMetadatumArgs {
  /// Integration runtime name
  final pulumi.Input<String> integrationRuntimeName;

  /// Metadata path.
  final pulumi.Input<String>? metadataPath;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIntegrationRuntimeObjectMetadatumArgs].
  /// [integrationRuntimeName] Integration runtime name
  /// [metadataPath] Metadata path.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetIntegrationRuntimeObjectMetadatumArgs({
    required this.integrationRuntimeName,
    this.metadataPath,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationRuntimeName': integrationRuntimeName,
      'metadataPath': ?metadataPath,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIntegrationRuntimeObjectMetadatumArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetIntegrationRuntimeObjectMetadatumArgs(
      integrationRuntimeName: pulumi.Input.fromValue(
        map['integrationRuntimeName'] as String,
      ),
      metadataPath: (() {
        final guardedValue = map['metadataPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
