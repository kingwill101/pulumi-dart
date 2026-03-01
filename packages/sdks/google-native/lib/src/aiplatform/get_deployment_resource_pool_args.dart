// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_deployment_resource_pool_args_doc}
/// Arguments for getDeploymentResourcePool.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_deployment_resource_pool_args_doc}
class GetDeploymentResourcePoolArgs {
  final pulumi.Input<String> deploymentResourcePoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeploymentResourcePoolArgs].
  /// [deploymentResourcePoolId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDeploymentResourcePoolArgs({
    required pulumi.Output<String> deploymentResourcePoolId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      deploymentResourcePoolId = pulumi.Input.asInput<String>(deploymentResourcePoolId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentResourcePoolId': deploymentResourcePoolId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDeploymentResourcePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResourcePoolArgs(
      deploymentResourcePoolId: pulumi.Output.create<String>(map['deploymentResourcePoolId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

