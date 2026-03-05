// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_dedicated_resources.dart';

/// {@template pulumi_aiplatform_v1beta1_deployment_resource_pool_aiplatform_v1beta1_args_doc}
/// The set of arguments for DeploymentResourcePool.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_deployment_resource_pool_aiplatform_v1beta1_args_doc}
class DeploymentResourcePoolAiplatformV1beta1Args {
  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  final pulumi.Input<GoogleCloudAiplatformV1beta1DedicatedResources> dedicatedResources;
  /// The ID to use for the DeploymentResourcePool, which will become the final component of the DeploymentResourcePool's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  final pulumi.Input<String> deploymentResourcePoolId;
  final pulumi.Input<String>? location;
  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [DeploymentResourcePoolAiplatformV1beta1Args].
  /// [dedicatedResources] The underlying DedicatedResources that the DeploymentResourcePool uses.
  /// [deploymentResourcePoolId] The ID to use for the DeploymentResourcePool, which will become the final component of the DeploymentResourcePool's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  /// [location] Optional.
  /// [name] Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  /// [project] Optional.
  DeploymentResourcePoolAiplatformV1beta1Args({
    required this.dedicatedResources,
    required this.deploymentResourcePoolId,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedResources': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1DedicatedResources, Map<String, dynamic>>(dedicatedResources, (value) => value.toMap()),
      'deploymentResourcePoolId': deploymentResourcePoolId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory DeploymentResourcePoolAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return DeploymentResourcePoolAiplatformV1beta1Args(
      dedicatedResources: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1DedicatedResources.fromMap((map['dedicatedResources']! as Map).cast<String, dynamic>())),
      deploymentResourcePoolId: pulumi.Input.fromValue(map['deploymentResourcePoolId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

