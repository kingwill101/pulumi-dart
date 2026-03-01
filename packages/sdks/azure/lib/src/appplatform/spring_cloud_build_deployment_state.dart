// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_build_deployment_quota.dart';

/// Input properties used for looking up and filtering SpringCloudBuildDeployment resources.
class SpringCloudBuildDeploymentState {
  /// A JSON object that contains the addon configurations of the Spring Cloud Build Deployment.
  final pulumi.Input<String>? addonJson;
  /// Specifies a list of Spring Cloud Application Performance Monitoring IDs.
  final pulumi.Input<List<String>>? applicationPerformanceMonitoringIds;
  /// The ID of the Spring Cloud Build Result.
  final pulumi.Input<String>? buildResultId;
  /// Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  final pulumi.Input<int>? instanceCount;
  /// The name which should be used for this Spring Cloud Build Deployment. Changing this forces a new Spring Cloud Build Deployment to be created.
  final pulumi.Input<String>? name;
  /// A `quota` block as defined below.
  final pulumi.Input<SpringCloudBuildDeploymentQuota>? quota;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Build Deployment to be created.
  final pulumi.Input<String>? springCloudAppId;

  /// Creates a new [SpringCloudBuildDeploymentState].
  /// [addonJson] A JSON object that contains the addon configurations of the Spring Cloud Build Deployment.
  /// [applicationPerformanceMonitoringIds] Specifies a list of Spring Cloud Application Performance Monitoring IDs.
  /// [buildResultId] The ID of the Spring Cloud Build Result.
  /// [environmentVariables] Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  /// [instanceCount] Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  /// [name] The name which should be used for this Spring Cloud Build Deployment. Changing this forces a new Spring Cloud Build Deployment to be created.
  /// [quota] A `quota` block as defined below.
  /// [springCloudAppId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Build Deployment to be created.
  SpringCloudBuildDeploymentState({
    pulumi.Output<String>? addonJson,
    pulumi.Output<List<String>>? applicationPerformanceMonitoringIds,
    pulumi.Output<String>? buildResultId,
    pulumi.Output<Map<String, String>>? environmentVariables,
    pulumi.Output<int>? instanceCount,
    pulumi.Output<String>? name,
    pulumi.Output<SpringCloudBuildDeploymentQuota>? quota,
    pulumi.Output<String>? springCloudAppId,
  }) :
      addonJson = pulumi.Input.asOptionalInput<String>(addonJson),
      applicationPerformanceMonitoringIds = pulumi.Input.asOptionalInput<List<String>>(applicationPerformanceMonitoringIds),
      buildResultId = pulumi.Input.asOptionalInput<String>(buildResultId),
      environmentVariables = pulumi.Input.asOptionalInput<Map<String, String>>(environmentVariables),
      instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      quota = pulumi.Input.asOptionalInput<SpringCloudBuildDeploymentQuota>(quota),
      springCloudAppId = pulumi.Input.asOptionalInput<String>(springCloudAppId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonJson': ?addonJson,
      'applicationPerformanceMonitoringIds': ?applicationPerformanceMonitoringIds,
      'buildResultId': ?buildResultId,
      'environmentVariables': ?environmentVariables,
      'instanceCount': ?instanceCount,
      'name': ?name,
      'quota': ?pulumi.Input.mapOptionalInputValue<SpringCloudBuildDeploymentQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'springCloudAppId': ?springCloudAppId,
    };
  }

  factory SpringCloudBuildDeploymentState.fromMap(Map<String, dynamic> map) {
    return SpringCloudBuildDeploymentState(
      addonJson: map['addonJson'] == null ? null : pulumi.Output.create<String>(map['addonJson'] as String),
      applicationPerformanceMonitoringIds: map['applicationPerformanceMonitoringIds'] == null ? null : pulumi.Output.create<List<String>>((map['applicationPerformanceMonitoringIds'] as List).cast<String>()),
      buildResultId: map['buildResultId'] == null ? null : pulumi.Output.create<String>(map['buildResultId'] as String),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['environmentVariables'] as Map).cast<String, String>()),
      instanceCount: map['instanceCount'] == null ? null : pulumi.Output.create<int>(map['instanceCount'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      quota: map['quota'] == null ? null : pulumi.Output.create<SpringCloudBuildDeploymentQuota>(SpringCloudBuildDeploymentQuota.fromMap((map['quota'] as Map).cast<String, dynamic>())),
      springCloudAppId: map['springCloudAppId'] == null ? null : pulumi.Output.create<String>(map['springCloudAppId'] as String),
    );
  }
}

