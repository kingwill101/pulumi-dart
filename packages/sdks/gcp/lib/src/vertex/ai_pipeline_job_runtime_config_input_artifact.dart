// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPipelineJobRuntimeConfigInputArtifact {
  /// Artifact resource id from MLMD. Which is the last portion of an artifact resource name: `projects/{project}/locations/{location}/metadataStores/default/artifacts/{artifact_id}`. The artifact must be within the same project, location and default metadatastore as the pipeline.
  final pulumi.Input<String> artifactId;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> artifactKey;

  /// Creates a new [AiPipelineJobRuntimeConfigInputArtifact].
  /// [artifactId] Artifact resource id from MLMD. Which is the last portion of an artifact resource name: `projects/{project}/locations/{location}/metadataStores/default/artifacts/{artifact_id}`. The artifact must be within the same project, location and default metadatastore as the pipeline.
  /// [artifactKey] The identifier for this object. Format specified above.
  const AiPipelineJobRuntimeConfigInputArtifact({
    required this.artifactId,
    required this.artifactKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'artifactKey': artifactKey,
    };
  }

  factory AiPipelineJobRuntimeConfigInputArtifact.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobRuntimeConfigInputArtifact(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      artifactKey: pulumi.Input.fromValue(map['artifactKey'] as String),
    );
  }
}
