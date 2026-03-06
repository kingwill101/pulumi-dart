// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsConfigArtifactConfigGoogleArtifactRegistry {
  /// The name of the artifact registry package.
  final pulumi.Input<String> artifactRegistryPackage;
  /// The host project of Artifact Registry.
  final pulumi.Input<String> projectId;

  /// Creates a new [InsightsConfigArtifactConfigGoogleArtifactRegistry].
  /// [artifactRegistryPackage] The name of the artifact registry package.
  /// [projectId] The host project of Artifact Registry.
  const InsightsConfigArtifactConfigGoogleArtifactRegistry({
    required this.artifactRegistryPackage,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactRegistryPackage': artifactRegistryPackage,
      'projectId': projectId,
    };
  }

  factory InsightsConfigArtifactConfigGoogleArtifactRegistry.fromMap(Map<String, dynamic> map) {
    return InsightsConfigArtifactConfigGoogleArtifactRegistry(
      artifactRegistryPackage: pulumi.Input.fromValue(map['artifactRegistryPackage'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}

