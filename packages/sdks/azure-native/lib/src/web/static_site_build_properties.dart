// ignore_for_file: unused_element, unnecessary_cast


/// Build properties for the static site.
class StaticSiteBuildProperties {
  /// A custom command to run during deployment of the Azure Functions API application.
  final String? apiBuildCommand;
  /// The path to the api code within the repository.
  final String? apiLocation;
  /// Deprecated: The path of the app artifacts after building (deprecated in favor of OutputLocation)
  final String? appArtifactLocation;
  /// A custom command to run during deployment of the static content application.
  final String? appBuildCommand;
  /// The path to the app code within the repository.
  final String? appLocation;
  /// Github Action secret name override.
  final String? githubActionSecretNameOverride;
  /// The output path of the app after building.
  final String? outputLocation;
  /// Skip Github Action workflow generation.
  final bool? skipGithubActionWorkflowGeneration;

  /// Creates a new [StaticSiteBuildProperties].
  /// [apiBuildCommand] A custom command to run during deployment of the Azure Functions API application.
  /// [apiLocation] The path to the api code within the repository.
  /// [appArtifactLocation] Deprecated: The path of the app artifacts after building (deprecated in favor of OutputLocation)
  /// [appBuildCommand] A custom command to run during deployment of the static content application.
  /// [appLocation] The path to the app code within the repository.
  /// [githubActionSecretNameOverride] Github Action secret name override.
  /// [outputLocation] The output path of the app after building.
  /// [skipGithubActionWorkflowGeneration] Skip Github Action workflow generation.
  StaticSiteBuildProperties({
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

  factory StaticSiteBuildProperties.fromMap(Map<String, dynamic> map) {
    return StaticSiteBuildProperties(
      apiBuildCommand: map['apiBuildCommand'] == null ? null : map['apiBuildCommand'] as String,
      apiLocation: map['apiLocation'] == null ? null : map['apiLocation'] as String,
      appArtifactLocation: map['appArtifactLocation'] == null ? null : map['appArtifactLocation'] as String,
      appBuildCommand: map['appBuildCommand'] == null ? null : map['appBuildCommand'] as String,
      appLocation: map['appLocation'] == null ? null : map['appLocation'] as String,
      githubActionSecretNameOverride: map['githubActionSecretNameOverride'] == null ? null : map['githubActionSecretNameOverride'] as String,
      outputLocation: map['outputLocation'] == null ? null : map['outputLocation'] as String,
      skipGithubActionWorkflowGeneration: map['skipGithubActionWorkflowGeneration'] == null ? null : map['skipGithubActionWorkflowGeneration'] as bool,
    );
  }
}

