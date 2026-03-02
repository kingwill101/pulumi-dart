// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_deployment_resource_pool_aiplatform_v1beta1_args_doc}
/// Arguments for getDeploymentResourcePool.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_deployment_resource_pool_aiplatform_v1beta1_args_doc}
class GetDeploymentResourcePoolAiplatformV1beta1Args {
  final pulumi.Input<String> deploymentResourcePoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeploymentResourcePoolAiplatformV1beta1Args].
  /// [deploymentResourcePoolId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDeploymentResourcePoolAiplatformV1beta1Args({
    required this.deploymentResourcePoolId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentResourcePoolId': deploymentResourcePoolId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDeploymentResourcePoolAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResourcePoolAiplatformV1beta1Args(
      deploymentResourcePoolId: (map['deploymentResourcePoolId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

