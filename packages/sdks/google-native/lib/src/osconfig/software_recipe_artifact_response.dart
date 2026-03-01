// ignore_for_file: unused_element, unnecessary_cast

import 'software_recipe_artifact_gcs_response.dart';
import 'software_recipe_artifact_remote_response.dart';

/// Specifies a resource to be used in the recipe.
class SoftwareRecipeArtifactResponse {
  /// Defaults to false. When false, recipes are subject to validations based on the artifact type: Remote: A checksum must be specified, and only protocols with transport-layer security are permitted. GCS: An object generation number must be specified.
  final bool allowInsecure;
  /// A Google Cloud Storage artifact.
  final SoftwareRecipeArtifactGcsResponse gcs;
  /// A generic remote artifact.
  final SoftwareRecipeArtifactRemoteResponse remote;

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
      'gcs': gcs.toMap(),
      'remote': remote.toMap(),
    };
  }

  factory SoftwareRecipeArtifactResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeArtifactResponse(
      allowInsecure: map['allowInsecure'] as bool,
      gcs: SoftwareRecipeArtifactGcsResponse.fromMap((map['gcs'] as Map).cast<String, dynamic>()),
      remote: SoftwareRecipeArtifactRemoteResponse.fromMap((map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}

