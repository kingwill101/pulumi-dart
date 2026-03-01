// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_dedicated_resources.dart';

/// {@template pulumi_aiplatform_v1_deployment_resource_pool_args_doc}
/// The set of arguments for DeploymentResourcePool.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_deployment_resource_pool_args_doc}
class DeploymentResourcePoolArgs {
  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  final pulumi.Input<GoogleCloudAiplatformV1DedicatedResources> dedicatedResources;
  /// The ID to use for the DeploymentResourcePool, which will become the final component of the DeploymentResourcePool's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  final pulumi.Input<String> deploymentResourcePoolId;
  final pulumi.Input<String>? location;
  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [DeploymentResourcePoolArgs].
  /// [dedicatedResources] The underlying DedicatedResources that the DeploymentResourcePool uses.
  /// [deploymentResourcePoolId] The ID to use for the DeploymentResourcePool, which will become the final component of the DeploymentResourcePool's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  /// [location] Optional.
  /// [name] Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  /// [project] Optional.
  DeploymentResourcePoolArgs({
    required pulumi.Output<GoogleCloudAiplatformV1DedicatedResources> dedicatedResources,
    required pulumi.Output<String> deploymentResourcePoolId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      dedicatedResources = pulumi.Input.asInput<GoogleCloudAiplatformV1DedicatedResources>(dedicatedResources),
      deploymentResourcePoolId = pulumi.Input.asInput<String>(deploymentResourcePoolId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedResources': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1DedicatedResources, Map<String, dynamic>>(dedicatedResources, (value) => value.toMap()),
      'deploymentResourcePoolId': deploymentResourcePoolId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory DeploymentResourcePoolArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentResourcePoolArgs(
      dedicatedResources: pulumi.Output.create<GoogleCloudAiplatformV1DedicatedResources>(GoogleCloudAiplatformV1DedicatedResources.fromMap((map['dedicatedResources'] as Map).cast<String, dynamic>())),
      deploymentResourcePoolId: pulumi.Output.create<String>(map['deploymentResourcePoolId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

