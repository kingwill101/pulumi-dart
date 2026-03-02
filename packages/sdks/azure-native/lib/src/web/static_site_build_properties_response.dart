// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Build properties for the static site.
class StaticSiteBuildPropertiesResponse {
  /// A custom command to run during deployment of the Azure Functions API application.
  final pulumi.Input<String>? apiBuildCommand;
  /// The path to the api code within the repository.
  final pulumi.Input<String>? apiLocation;
  /// Deprecated: The path of the app artifacts after building (deprecated in favor of OutputLocation)
  final pulumi.Input<String>? appArtifactLocation;
  /// A custom command to run during deployment of the static content application.
  final pulumi.Input<String>? appBuildCommand;
  /// The path to the app code within the repository.
  final pulumi.Input<String>? appLocation;
  /// Github Action secret name override.
  final pulumi.Input<String>? githubActionSecretNameOverride;
  /// The output path of the app after building.
  final pulumi.Input<String>? outputLocation;
  /// Skip Github Action workflow generation.
  final pulumi.Input<bool>? skipGithubActionWorkflowGeneration;

  /// Creates a new [StaticSiteBuildPropertiesResponse].
  /// [apiBuildCommand] A custom command to run during deployment of the Azure Functions API application.
  /// [apiLocation] The path to the api code within the repository.
  /// [appArtifactLocation] Deprecated: The path of the app artifacts after building (deprecated in favor of OutputLocation)
  /// [appBuildCommand] A custom command to run during deployment of the static content application.
  /// [appLocation] The path to the app code within the repository.
  /// [githubActionSecretNameOverride] Github Action secret name override.
  /// [outputLocation] The output path of the app after building.
  /// [skipGithubActionWorkflowGeneration] Skip Github Action workflow generation.
  StaticSiteBuildPropertiesResponse({
    this.apiBuildCommand,
    this.apiLocation,
    this.appArtifactLocation,
    this.appBuildCommand,
    this.appLocation,
    this.githubActionSecretNameOverride,
    this.outputLocation,
    this.skipGithubActionWorkflowGeneration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiBuildCommand': ?apiBuildCommand,
      'apiLocation': ?apiLocation,
      'appArtifactLocation': ?appArtifactLocation,
      'appBuildCommand': ?appBuildCommand,
      'appLocation': ?appLocation,
      'githubActionSecretNameOverride': ?githubActionSecretNameOverride,
      'outputLocation': ?outputLocation,
      'skipGithubActionWorkflowGeneration': ?skipGithubActionWorkflowGeneration,
    };
  }

  factory StaticSiteBuildPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StaticSiteBuildPropertiesResponse(
      apiBuildCommand: map['apiBuildCommand'] == null ? null : (map['apiBuildCommand'] as String).input(),
      apiLocation: map['apiLocation'] == null ? null : (map['apiLocation'] as String).input(),
      appArtifactLocation: map['appArtifactLocation'] == null ? null : (map['appArtifactLocation'] as String).input(),
      appBuildCommand: map['appBuildCommand'] == null ? null : (map['appBuildCommand'] as String).input(),
      appLocation: map['appLocation'] == null ? null : (map['appLocation'] as String).input(),
      githubActionSecretNameOverride: map['githubActionSecretNameOverride'] == null ? null : (map['githubActionSecretNameOverride'] as String).input(),
      outputLocation: map['outputLocation'] == null ? null : (map['outputLocation'] as String).input(),
      skipGithubActionWorkflowGeneration: map['skipGithubActionWorkflowGeneration'] == null ? null : (map['skipGithubActionWorkflowGeneration'] as bool).input(),
    );
  }
}

