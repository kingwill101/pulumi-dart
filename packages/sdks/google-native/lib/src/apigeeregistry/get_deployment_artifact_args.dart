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
  GetDeploymentArtifactArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> artifactId,
    required pulumi.Output<String> deploymentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      artifactId = pulumi.Input.asInput<String>(artifactId),
      deploymentId = pulumi.Input.asInput<String>(deploymentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      artifactId: pulumi.Output.create<String>(map['artifactId'] as String),
      deploymentId: pulumi.Output.create<String>(map['deploymentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

