// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_recipe_artifact_gcs_response.dart';
import 'software_recipe_artifact_remote_response.dart';

/// Specifies a resource to be used in the recipe.
class SoftwareRecipeArtifactResponse {
  /// Defaults to false. When false, recipes are subject to validations based on the artifact type: Remote: A checksum must be specified, and only protocols with transport-layer security are permitted. GCS: An object generation number must be specified.
  final pulumi.Input<bool> allowInsecure;
  /// A Google Cloud Storage artifact.
  final pulumi.Input<SoftwareRecipeArtifactGcsResponse> gcs;
  /// A generic remote artifact.
  final pulumi.Input<SoftwareRecipeArtifactRemoteResponse> remote;

  /// Creates a new [SoftwareRecipeArtifactResponse].
  /// [allowInsecure] Defaults to false. When false, recipes are subject to validations based on the artifact type: Remote: A checksum must be specified, and only protocols with transport-layer security are permitted. GCS: An object generation number must be specified.
  /// [gcs] A Google Cloud Storage artifact.
  /// [remote] A generic remote artifact.
  SoftwareRecipeArtifactResponse({
    required this.allowInsecure,
    required this.gcs,
    required this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': allowInsecure,
      'gcs': pulumi.Input.mapInputValue<SoftwareRecipeArtifactGcsResponse, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'remote': pulumi.Input.mapInputValue<SoftwareRecipeArtifactRemoteResponse, Map<String, dynamic>>(remote, (value) => value.toMap()),
    };
  }

  factory SoftwareRecipeArtifactResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeArtifactResponse(
      allowInsecure: pulumi.Input.fromValue(map['allowInsecure'] as bool),
      gcs: pulumi.Input.fromValue(SoftwareRecipeArtifactGcsResponse.fromMap((map['gcs']! as Map).cast<String, dynamic>())),
      remote: pulumi.Input.fromValue(SoftwareRecipeArtifactRemoteResponse.fromMap((map['remote']! as Map).cast<String, dynamic>())),
    );
  }
}

