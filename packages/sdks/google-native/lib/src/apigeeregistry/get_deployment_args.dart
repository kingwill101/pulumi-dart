// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_deployment_args_doc}
/// Arguments for getDeployment.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_deployment_args_doc}
class GetDeploymentArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> deploymentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeploymentArgs].
  /// [apiId] Required.
  /// [deploymentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDeploymentArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> deploymentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      deploymentId = pulumi.Input.asInput<String>(deploymentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'deploymentId': deploymentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      deploymentId: pulumi.Output.create<String>(map['deploymentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

