// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deploymentmanager_alpha_get_deployment_args_doc}
/// Arguments for getDeployment.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_alpha_get_deployment_args_doc}
class GetDeploymentArgs {
  final pulumi.Input<String> deployment;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeploymentArgs].
  /// [deployment] Required.
  /// [project] Optional.
  GetDeploymentArgs({
    required pulumi.Output<String> deployment,
    pulumi.Output<String>? project,
  }) :
      deployment = pulumi.Input.asInput<String>(deployment),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': deployment,
      'project': ?project,
    };
  }

  factory GetDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArgs(
      deployment: pulumi.Output.create<String>(map['deployment'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

