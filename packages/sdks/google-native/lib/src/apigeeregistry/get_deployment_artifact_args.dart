// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_deployment_artifact_args_doc}
/// Arguments for getDeploymentArtifact.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_deployment_artifact_args_doc}
class GetDeploymentArtifactArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> deploymentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeploymentArtifactArgs].
  /// [apiId] Required.
  /// [artifactId] Required.
  /// [deploymentId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetDeploymentArtifactArgs({
    required this.apiId,
    required this.artifactId,
    required this.deploymentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'artifactId': artifactId,
      'deploymentId': deploymentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDeploymentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArtifactArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      deploymentId: pulumi.Input.fromValue(map['deploymentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

