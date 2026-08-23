// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_dedicated_resources_response.dart';

/// Result data returned by getDeploymentResourcePool.
class GetDeploymentResourcePoolAiplatformV1beta1Result {
  /// Timestamp when this DeploymentResourcePool was created.
  final String createTime;
  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  final GoogleCloudAiplatformV1beta1DedicatedResourcesResponse dedicatedResources;
  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  final String name;

  /// Creates a new [GetDeploymentResourcePoolAiplatformV1beta1Result].
  /// [createTime] Timestamp when this DeploymentResourcePool was created.
  /// [dedicatedResources] The underlying DedicatedResources that the DeploymentResourcePool uses.
  /// [name] Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  const GetDeploymentResourcePoolAiplatformV1beta1Result({
    required this.createTime,
    required this.dedicatedResources,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dedicatedResources': dedicatedResources.toMap(),
      'name': name,
    };
  }

  factory GetDeploymentResourcePoolAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResourcePoolAiplatformV1beta1Result(
      createTime: map['createTime'] as String,
      dedicatedResources: GoogleCloudAiplatformV1beta1DedicatedResourcesResponse.fromMap((map['dedicatedResources']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
