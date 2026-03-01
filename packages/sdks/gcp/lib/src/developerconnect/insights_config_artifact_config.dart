// ignore_for_file: unused_element, unnecessary_cast

import 'insights_config_artifact_config_google_artifact_analysis.dart';
import 'insights_config_artifact_config_google_artifact_registry.dart';

class InsightsConfigArtifactConfig {
  /// Google Artifact Analysis configurations.
  /// Structure is documented below.
  final InsightsConfigArtifactConfigGoogleArtifactAnalysis? googleArtifactAnalysis;
  /// Google Artifact Registry configurations.
  /// Structure is documented below.
  final InsightsConfigArtifactConfigGoogleArtifactRegistry? googleArtifactRegistry;
  /// The URI of the artifact that is deployed.
  /// e.g. `us-docker.pkg.dev/my-project/my-repo/image`.
  /// The URI does not include the tag / digest because it captures a lineage of
  /// artifacts.
  final String? uri;

  /// Creates a new [InsightsConfigArtifactConfig].
  /// [googleArtifactAnalysis] Google Artifact Analysis configurations.
  /// [googleArtifactRegistry] Google Artifact Registry configurations.
  /// [uri] The URI of the artifact that is deployed.
  InsightsConfigArtifactConfig({
    this.googleArtifactAnalysis,
    this.googleArtifactRegistry,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleArtifactAnalysis': ?googleArtifactAnalysis == null ? null : googleArtifactAnalysis!.toMap(),
      'googleArtifactRegistry': ?googleArtifactRegistry == null ? null : googleArtifactRegistry!.toMap(),
      'uri': ?uri,
    };
  }

  factory InsightsConfigArtifactConfig.fromMap(Map<String, dynamic> map) {
    return InsightsConfigArtifactConfig(
      googleArtifactAnalysis: map['googleArtifactAnalysis'] == null ? null : InsightsConfigArtifactConfigGoogleArtifactAnalysis.fromMap((map['googleArtifactAnalysis'] as Map).cast<String, dynamic>()),
      googleArtifactRegistry: map['googleArtifactRegistry'] == null ? null : InsightsConfigArtifactConfigGoogleArtifactRegistry.fromMap((map['googleArtifactRegistry'] as Map).cast<String, dynamic>()),
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

