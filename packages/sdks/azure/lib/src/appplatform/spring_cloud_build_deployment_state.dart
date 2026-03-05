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
    this.addonJson,
    this.applicationPerformanceMonitoringIds,
    this.buildResultId,
    this.environmentVariables,
    this.instanceCount,
    this.name,
    this.quota,
    this.springCloudAppId,
  });

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
      addonJson: (() { final guardedValue = map['addonJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationPerformanceMonitoringIds: (() { final guardedValue = map['applicationPerformanceMonitoringIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      buildResultId: (() { final guardedValue = map['buildResultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quota: (() { final guardedValue = map['quota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudBuildDeploymentQuota.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      springCloudAppId: (() { final guardedValue = map['springCloudAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

