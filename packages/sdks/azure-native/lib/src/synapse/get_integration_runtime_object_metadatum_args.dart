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
    required pulumi.Output<String> integrationRuntimeName,
    pulumi.Output<String>? metadataPath,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      integrationRuntimeName = pulumi.Input.asInput<String>(integrationRuntimeName),
      metadataPath = pulumi.Input.asOptionalInput<String>(metadataPath),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationRuntimeName': integrationRuntimeName,
      'metadataPath': ?metadataPath,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIntegrationRuntimeObjectMetadatumArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeObjectMetadatumArgs(
      integrationRuntimeName: pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      metadataPath: map['metadataPath'] == null ? null : pulumi.Output.create<String>(map['metadataPath'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

