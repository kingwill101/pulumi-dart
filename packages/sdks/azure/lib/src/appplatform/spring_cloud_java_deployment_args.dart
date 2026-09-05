// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_java_deployment_quota.dart';

/// {@template pulumi_appplatform_spring_cloud_java_deployment_spring_cloud_java_deployment_args_doc}
/// The set of arguments for SpringCloudJavaDeployment.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_java_deployment_spring_cloud_java_deployment_args_doc}
class SpringCloudJavaDeploymentArgs {
  /// Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  final pulumi.Input<Map<String, String>?>? environmentVariables;
  /// Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  final pulumi.Input<int?>? instanceCount;
  /// Specifies the jvm option of the Spring Cloud Deployment.
  final pulumi.Input<String?>? jvmOptions;
  /// Specifies the name of the Spring Cloud Deployment. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `quota` block as defined below.
  final pulumi.Input<SpringCloudJavaDeploymentQuota?>? quota;
  /// Specifies the runtime version of the Spring Cloud Deployment. Possible Values are `Java_8`, `Java_11` and `Java_17`. Defaults to `Java_8`.
  final pulumi.Input<String?>? runtimeVersion;
  /// Specifies the id of the Spring Cloud Application in which to create the Deployment. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudAppId;

  /// Creates a new [SpringCloudJavaDeploymentArgs].
  /// [environmentVariables] Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  /// [instanceCount] Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  /// [jvmOptions] Specifies the jvm option of the Spring Cloud Deployment.
  /// [name] Specifies the name of the Spring Cloud Deployment. Changing this forces a new resource to be created.
  /// [quota] A `quota` block as defined below.
  /// [runtimeVersion] Specifies the runtime version of the Spring Cloud Deployment. Possible Values are `Java_8`, `Java_11` and `Java_17`. Defaults to `Java_8`.
  /// [springCloudAppId] Specifies the id of the Spring Cloud Application in which to create the Deployment. Changing this forces a new resource to be created.
  const SpringCloudJavaDeploymentArgs({
    this.environmentVariables,
    this.instanceCount,
    this.jvmOptions,
    this.name,
    this.quota,
    this.runtimeVersion,
    required this.springCloudAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentVariables': ?environmentVariables,
      'instanceCount': ?instanceCount,
      'jvmOptions': ?jvmOptions,
      'name': ?name,
      'quota': ?pulumi.Input.mapOptionalInputValue<SpringCloudJavaDeploymentQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'runtimeVersion': ?runtimeVersion,
      'springCloudAppId': springCloudAppId,
    };
  }

  factory SpringCloudJavaDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudJavaDeploymentArgs(
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      jvmOptions: (() { final guardedValue = map['jvmOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quota: (() { final guardedValue = map['quota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudJavaDeploymentQuota.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudAppId: pulumi.Input.fromValue(map['springCloudAppId'] as String),
    );
  }
}
