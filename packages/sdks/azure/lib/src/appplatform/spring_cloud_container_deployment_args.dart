// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_container_deployment_quota.dart';

/// {@template pulumi_appplatform_spring_cloud_container_deployment_spring_cloud_container_deployment_args_doc}
/// The set of arguments for SpringCloudContainerDeployment.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_container_deployment_spring_cloud_container_deployment_args_doc}
class SpringCloudContainerDeploymentArgs {
  /// A JSON object that contains the addon configurations of the Spring Cloud Container Deployment.
  final pulumi.Input<String>? addonJson;
  /// Specifies a list of Spring Cloud Application Performance Monitoring IDs.
  final pulumi.Input<List<String>>? applicationPerformanceMonitoringIds;
  /// Specifies the arguments to the entrypoint. The docker image's `CMD` is used if not specified.
  final pulumi.Input<List<String>>? arguments;
  /// Specifies the entrypoint array. It will not be executed within a shell. The docker image's `ENTRYPOINT` is used if not specified.
  final pulumi.Input<List<String>>? commands;
  /// Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// Container image of the custom container. This should be in the form of `<repository>:<tag>` without the server name of the registry.
  final pulumi.Input<String> image;
  /// Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  final pulumi.Input<int>? instanceCount;
  /// Specifies the language framework of the container image. The only possible value is `springboot`.
  final pulumi.Input<String>? languageFramework;
  /// The name which should be used for this Spring Cloud Container Deployment. Changing this forces a new Spring Cloud Container Deployment to be created.
  final pulumi.Input<String>? name;
  /// A `quota` block as defined below.
  final pulumi.Input<SpringCloudContainerDeploymentQuota>? quota;
  /// The name of the registry that contains the container image.
  final pulumi.Input<String> server;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Container Deployment to be created.
  final pulumi.Input<String> springCloudAppId;

  /// Creates a new [SpringCloudContainerDeploymentArgs].
  /// [addonJson] A JSON object that contains the addon configurations of the Spring Cloud Container Deployment.
  /// [applicationPerformanceMonitoringIds] Specifies a list of Spring Cloud Application Performance Monitoring IDs.
  /// [arguments] Specifies the arguments to the entrypoint. The docker image's `CMD` is used if not specified.
  /// [commands] Specifies the entrypoint array. It will not be executed within a shell. The docker image's `ENTRYPOINT` is used if not specified.
  /// [environmentVariables] Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  /// [image] Container image of the custom container. This should be in the form of `<repository>:<tag>` without the server name of the registry.
  /// [instanceCount] Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  /// [languageFramework] Specifies the language framework of the container image. The only possible value is `springboot`.
  /// [name] The name which should be used for this Spring Cloud Container Deployment. Changing this forces a new Spring Cloud Container Deployment to be created.
  /// [quota] A `quota` block as defined below.
  /// [server] The name of the registry that contains the container image.
  /// [springCloudAppId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Container Deployment to be created.
  SpringCloudContainerDeploymentArgs({
    this.addonJson,
    this.applicationPerformanceMonitoringIds,
    this.arguments,
    this.commands,
    this.environmentVariables,
    required this.image,
    this.instanceCount,
    this.languageFramework,
    this.name,
    this.quota,
    required this.server,
    required this.springCloudAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonJson': ?addonJson,
      'applicationPerformanceMonitoringIds': ?applicationPerformanceMonitoringIds,
      'arguments': ?arguments,
      'commands': ?commands,
      'environmentVariables': ?environmentVariables,
      'image': image,
      'instanceCount': ?instanceCount,
      'languageFramework': ?languageFramework,
      'name': ?name,
      'quota': ?pulumi.Input.mapOptionalInputValue<SpringCloudContainerDeploymentQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'server': server,
      'springCloudAppId': springCloudAppId,
    };
  }

  factory SpringCloudContainerDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudContainerDeploymentArgs(
      addonJson: map['addonJson'] == null ? null : (map['addonJson']! as String).input(),
      applicationPerformanceMonitoringIds: map['applicationPerformanceMonitoringIds'] == null ? null : ((map['applicationPerformanceMonitoringIds']! as List).cast<String>()).input(),
      arguments: map['arguments'] == null ? null : ((map['arguments']! as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands']! as List).cast<String>()).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables']! as Map).cast<String, String>()).input(),
      image: (map['image'] as String).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount']! as int).input(),
      languageFramework: map['languageFramework'] == null ? null : (map['languageFramework']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      quota: map['quota'] == null ? null : (SpringCloudContainerDeploymentQuota.fromMap((map['quota']! as Map).cast<String, dynamic>())).input(),
      server: (map['server'] as String).input(),
      springCloudAppId: (map['springCloudAppId'] as String).input(),
    );
  }
}

