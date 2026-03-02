// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsConfigArtifactConfigGoogleArtifactAnalysis {
  /// The project id of the project where the provenance is stored.
  final pulumi.Input<String> projectId;

  /// Creates a new [InsightsConfigArtifactConfigGoogleArtifactAnalysis].
  /// [projectId] The project id of the project where the provenance is stored.
  InsightsConfigArtifactConfigGoogleArtifactAnalysis({
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
    };
  }

  factory InsightsConfigArtifactConfigGoogleArtifactAnalysis.fromMap(Map<String, dynamic> map) {
    return InsightsConfigArtifactConfigGoogleArtifactAnalysis(
      projectId: (map['projectId'] as String).input(),
    );
  }
}

