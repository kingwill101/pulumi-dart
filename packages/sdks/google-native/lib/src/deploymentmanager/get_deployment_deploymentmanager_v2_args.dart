// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deploymentmanager_v2_get_deployment_deploymentmanager_v2_args_doc}
/// Arguments for getDeployment.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_v2_get_deployment_deploymentmanager_v2_args_doc}
class GetDeploymentDeploymentmanagerV2Args {
  final pulumi.Input<String> deployment;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeploymentDeploymentmanagerV2Args].
  /// [deployment] Required.
  /// [project] Optional.
  const GetDeploymentDeploymentmanagerV2Args({
    required this.deployment,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': deployment,
      'project': ?project,
    };
  }

  factory GetDeploymentDeploymentmanagerV2Args.fromMap(Map<String, dynamic> map) {
    return GetDeploymentDeploymentmanagerV2Args(
      deployment: pulumi.Input.fromValue(map['deployment'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
