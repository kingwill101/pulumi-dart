// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_recipe_artifact_gcs.dart';
import 'software_recipe_artifact_remote.dart';

/// Specifies a resource to be used in the recipe.
class SoftwareRecipeArtifact {
  /// Defaults to false. When false, recipes are subject to validations based on the artifact type: Remote: A checksum must be specified, and only protocols with transport-layer security are permitted. GCS: An object generation number must be specified.
  final pulumi.Input<bool>? allowInsecure;

  /// A Google Cloud Storage artifact.
  final pulumi.Input<SoftwareRecipeArtifactGcs>? gcs;

  /// Id of the artifact, which the installation and update steps of this recipe can reference. Artifacts in a recipe cannot have the same id.
  final pulumi.Input<String> id;

  /// A generic remote artifact.
  final pulumi.Input<SoftwareRecipeArtifactRemote>? remote;

  /// Creates a new [SoftwareRecipeArtifact].
  /// [allowInsecure] Defaults to false. When false, recipes are subject to validations based on the artifact type: Remote: A checksum must be specified, and only protocols with transport-layer security are permitted. GCS: An object generation number must be specified.
  /// [gcs] A Google Cloud Storage artifact.
  /// [id] Id of the artifact, which the installation and update steps of this recipe can reference. Artifacts in a recipe cannot have the same id.
  /// [remote] A generic remote artifact.
  SoftwareRecipeArtifact({
    this.allowInsecure,
    this.gcs,
    required this.id,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': ?allowInsecure,
      'gcs':
          ?pulumi.Input.mapOptionalInputValue<
            SoftwareRecipeArtifactGcs,
            Map<String, dynamic>
          >(gcs, (value) => value.toMap()),
      'id': id,
      'remote':
          ?pulumi.Input.mapOptionalInputValue<
            SoftwareRecipeArtifactRemote,
            Map<String, dynamic>
          >(remote, (value) => value.toMap()),
    };
  }

  factory SoftwareRecipeArtifact.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeArtifact(
      allowInsecure: (() {
        final guardedValue = map['allowInsecure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      gcs: (() {
        final guardedValue = map['gcs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SoftwareRecipeArtifactGcs.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      remote: (() {
        final guardedValue = map['remote'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SoftwareRecipeArtifactRemote.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
