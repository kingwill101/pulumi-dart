// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_dedicated_resources_response.dart';

/// Result data returned by getDeploymentResourcePool.
class GetDeploymentResourcePoolResult {
  /// Timestamp when this DeploymentResourcePool was created.
  final String? createTime;
  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  final GoogleCloudAiplatformV1DedicatedResourcesResponse? dedicatedResources;
  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  final String? name;

  /// Creates a new [GetDeploymentResourcePoolResult].
  /// [createTime] Timestamp when this DeploymentResourcePool was created.
  /// [dedicatedResources] The underlying DedicatedResources that the DeploymentResourcePool uses.
  /// [name] Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  const GetDeploymentResourcePoolResult({
    this.createTime,
    this.dedicatedResources,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dedicatedResources': ?dedicatedResources?.toMap(),
      'name': ?name,
    };
  }

  factory GetDeploymentResourcePoolResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResourcePoolResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dedicatedResources: (() { final guardedValue = map['dedicatedResources']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1DedicatedResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
