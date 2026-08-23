// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_policies_recipe_artifact_gcs.dart';
import 'guest_policies_recipe_artifact_remote.dart';

class GuestPoliciesRecipeArtifact {
  /// Defaults to false. When false, recipes are subject to validations based on the artifact type:
  /// Remote: A checksum must be specified, and only protocols with transport-layer security are permitted.
  /// GCS: An object generation number must be specified.
  final pulumi.Input<bool>? allowInsecure;
  /// A Google Cloud Storage artifact.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeArtifactGcs>? gcs;
  /// Id of the artifact, which the installation and update steps of this recipe can reference.
  /// Artifacts in a recipe cannot have the same id.
  final pulumi.Input<String> id;
  /// A generic remote artifact.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeArtifactRemote>? remote;

  /// Creates a new [GuestPoliciesRecipeArtifact].
  /// [allowInsecure] Defaults to false. When false, recipes are subject to validations based on the artifact type:
  /// [gcs] A Google Cloud Storage artifact.
  /// [id] Id of the artifact, which the installation and update steps of this recipe can reference.
  /// [remote] A generic remote artifact.
  const GuestPoliciesRecipeArtifact({
    this.allowInsecure,
    this.gcs,
    required this.id,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': ?allowInsecure,
      'gcs': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeArtifactGcs, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'id': id,
      'remote': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeArtifactRemote, Map<String, dynamic>>(remote, (value) => value.toMap()),
    };
  }

  factory GuestPoliciesRecipeArtifact.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeArtifact(
      allowInsecure: (() { final guardedValue = map['allowInsecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcs: (() { final guardedValue = map['gcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeArtifactGcs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      remote: (() { final guardedValue = map['remote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeArtifactRemote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
