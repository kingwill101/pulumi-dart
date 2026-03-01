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
    pulumi.Output<String>? addonJson,
    pulumi.Output<List<String>>? applicationPerformanceMonitoringIds,
    pulumi.Output<List<String>>? arguments,
    pulumi.Output<List<String>>? commands,
    pulumi.Output<Map<String, String>>? environmentVariables,
    required pulumi.Output<String> image,
    pulumi.Output<int>? instanceCount,
    pulumi.Output<String>? languageFramework,
    pulumi.Output<String>? name,
    pulumi.Output<SpringCloudContainerDeploymentQuota>? quota,
    required pulumi.Output<String> server,
    required pulumi.Output<String> springCloudAppId,
  }) :
      addonJson = pulumi.Input.asOptionalInput<String>(addonJson),
      applicationPerformanceMonitoringIds = pulumi.Input.asOptionalInput<List<String>>(applicationPerformanceMonitoringIds),
      arguments = pulumi.Input.asOptionalInput<List<String>>(arguments),
      commands = pulumi.Input.asOptionalInput<List<String>>(commands),
      environmentVariables = pulumi.Input.asOptionalInput<Map<String, String>>(environmentVariables),
      image = pulumi.Input.asInput<String>(image),
      instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
      languageFramework = pulumi.Input.asOptionalInput<String>(languageFramework),
      name = pulumi.Input.asOptionalInput<String>(name),
      quota = pulumi.Input.asOptionalInput<SpringCloudContainerDeploymentQuota>(quota),
      server = pulumi.Input.asInput<String>(server),
      springCloudAppId = pulumi.Input.asInput<String>(springCloudAppId);

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
      addonJson: map['addonJson'] == null ? null : pulumi.Output.create<String>(map['addonJson'] as String),
      applicationPerformanceMonitoringIds: map['applicationPerformanceMonitoringIds'] == null ? null : pulumi.Output.create<List<String>>((map['applicationPerformanceMonitoringIds'] as List).cast<String>()),
      arguments: map['arguments'] == null ? null : pulumi.Output.create<List<String>>((map['arguments'] as List).cast<String>()),
      commands: map['commands'] == null ? null : pulumi.Output.create<List<String>>((map['commands'] as List).cast<String>()),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['environmentVariables'] as Map).cast<String, String>()),
      image: pulumi.Output.create<String>(map['image'] as String),
      instanceCount: map['instanceCount'] == null ? null : pulumi.Output.create<int>(map['instanceCount'] as int),
      languageFramework: map['languageFramework'] == null ? null : pulumi.Output.create<String>(map['languageFramework'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      quota: map['quota'] == null ? null : pulumi.Output.create<SpringCloudContainerDeploymentQuota>(SpringCloudContainerDeploymentQuota.fromMap((map['quota'] as Map).cast<String, dynamic>())),
      server: pulumi.Output.create<String>(map['server'] as String),
      springCloudAppId: pulumi.Output.create<String>(map['springCloudAppId'] as String),
    );
  }
}

