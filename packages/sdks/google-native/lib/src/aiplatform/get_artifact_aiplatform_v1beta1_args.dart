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
  const GetArtifactAiplatformV1beta1Args({
    required this.artifactId,
    required this.location,
    required this.metadataStoreId,
    this.project,
  });

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
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      metadataStoreId: pulumi.Input.fromValue(map['metadataStoreId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

