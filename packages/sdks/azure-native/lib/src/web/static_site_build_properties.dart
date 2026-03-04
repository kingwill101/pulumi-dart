// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Build properties for the static site.
class StaticSiteBuildProperties {
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
      apiBuildCommand: (() {
        final guardedValue = map['apiBuildCommand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apiLocation: (() {
        final guardedValue = map['apiLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appArtifactLocation: (() {
        final guardedValue = map['appArtifactLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appBuildCommand: (() {
        final guardedValue = map['appBuildCommand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appLocation: (() {
        final guardedValue = map['appLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      githubActionSecretNameOverride: (() {
        final guardedValue = map['githubActionSecretNameOverride'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputLocation: (() {
        final guardedValue = map['outputLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skipGithubActionWorkflowGeneration: (() {
        final guardedValue = map['skipGithubActionWorkflowGeneration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
