// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_artifact_aiplatform_v1beta1_args_doc}
/// Arguments for getArtifact.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_artifact_aiplatform_v1beta1_args_doc}
class GetArtifactAiplatformV1beta1Args {
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetArtifactAiplatformV1beta1Args].
  /// [artifactId] Required.
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetArtifactAiplatformV1beta1Args({
    required pulumi.Output<String> artifactId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> metadataStoreId,
    pulumi.Output<String>? project,
  }) :
      artifactId = pulumi.Input.asInput<String>(artifactId),
      location = pulumi.Input.asInput<String>(location),
      metadataStoreId = pulumi.Input.asInput<String>(metadataStoreId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'location': location,
      'metadataStoreId': metadataStoreId,
      'project': ?project,
    };
  }

  factory GetArtifactAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetArtifactAiplatformV1beta1Args(
      artifactId: pulumi.Output.create<String>(map['artifactId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      metadataStoreId: pulumi.Output.create<String>(map['metadataStoreId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

