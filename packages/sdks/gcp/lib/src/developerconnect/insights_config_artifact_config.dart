// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_config_artifact_config_google_artifact_analysis.dart';
import 'insights_config_artifact_config_google_artifact_registry.dart';

class InsightsConfigArtifactConfig {
  /// Google Artifact Analysis configurations.
  /// Structure is documented below.
  final pulumi.Input<InsightsConfigArtifactConfigGoogleArtifactAnalysis>? googleArtifactAnalysis;
  /// Google Artifact Registry configurations.
  /// Structure is documented below.
  final pulumi.Input<InsightsConfigArtifactConfigGoogleArtifactRegistry>? googleArtifactRegistry;
  /// The URI of the artifact that is deployed.
  /// e.g. `us-docker.pkg.dev/my-project/my-repo/image`.
  /// The URI does not include the tag / digest because it captures a lineage of
  /// artifacts.
  final pulumi.Input<String>? uri;

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
      'googleArtifactAnalysis': ?pulumi.Input.mapOptionalInputValue<InsightsConfigArtifactConfigGoogleArtifactAnalysis, Map<String, dynamic>>(googleArtifactAnalysis, (value) => value.toMap()),
      'googleArtifactRegistry': ?pulumi.Input.mapOptionalInputValue<InsightsConfigArtifactConfigGoogleArtifactRegistry, Map<String, dynamic>>(googleArtifactRegistry, (value) => value.toMap()),
      'uri': ?uri,
    };
  }

  factory InsightsConfigArtifactConfig.fromMap(Map<String, dynamic> map) {
    return InsightsConfigArtifactConfig(
      googleArtifactAnalysis: map['googleArtifactAnalysis'] == null ? null : (InsightsConfigArtifactConfigGoogleArtifactAnalysis.fromMap((map['googleArtifactAnalysis'] as Map).cast<String, dynamic>())).input(),
      googleArtifactRegistry: map['googleArtifactRegistry'] == null ? null : (InsightsConfigArtifactConfigGoogleArtifactRegistry.fromMap((map['googleArtifactRegistry'] as Map).cast<String, dynamic>())).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

