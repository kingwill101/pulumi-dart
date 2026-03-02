// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_java_deployment_quota.dart';

/// Input properties used for looking up and filtering SpringCloudJavaDeployment resources.
class SpringCloudJavaDeploymentState {
  /// Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  final pulumi.Input<int>? instanceCount;
  /// Specifies the jvm option of the Spring Cloud Deployment.
  final pulumi.Input<String>? jvmOptions;
  /// Specifies the name of the Spring Cloud Deployment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `quota` block as defined below.
  final pulumi.Input<SpringCloudJavaDeploymentQuota>? quota;
  /// Specifies the runtime version of the Spring Cloud Deployment. Possible Values are `Java_8`, `Java_11` and `Java_17`. Defaults to `Java_8`.
  final pulumi.Input<String>? runtimeVersion;
  /// Specifies the id of the Spring Cloud Application in which to create the Deployment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? springCloudAppId;

  /// Creates a new [SpringCloudJavaDeploymentState].
  /// [environmentVariables] Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  /// [instanceCount] Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  /// [jvmOptions] Specifies the jvm option of the Spring Cloud Deployment.
  /// [name] Specifies the name of the Spring Cloud Deployment. Changing this forces a new resource to be created.
  /// [quota] A `quota` block as defined below.
  /// [runtimeVersion] Specifies the runtime version of the Spring Cloud Deployment. Possible Values are `Java_8`, `Java_11` and `Java_17`. Defaults to `Java_8`.
  /// [springCloudAppId] Specifies the id of the Spring Cloud Application in which to create the Deployment. Changing this forces a new resource to be created.
  SpringCloudJavaDeploymentState({
    this.environmentVariables,
    this.instanceCount,
    this.jvmOptions,
    this.name,
    this.quota,
    this.runtimeVersion,
    this.springCloudAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentVariables': ?environmentVariables,
      'instanceCount': ?instanceCount,
      'jvmOptions': ?jvmOptions,
      'name': ?name,
      'quota': ?pulumi.Input.mapOptionalInputValue<SpringCloudJavaDeploymentQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'runtimeVersion': ?runtimeVersion,
      'springCloudAppId': ?springCloudAppId,
    };
  }

  factory SpringCloudJavaDeploymentState.fromMap(Map<String, dynamic> map) {
    return SpringCloudJavaDeploymentState(
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables']! as Map).cast<String, String>()).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount']! as int).input(),
      jvmOptions: map['jvmOptions'] == null ? null : (map['jvmOptions']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      quota: map['quota'] == null ? null : (SpringCloudJavaDeploymentQuota.fromMap((map['quota']! as Map).cast<String, dynamic>())).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion']! as String).input(),
      springCloudAppId: map['springCloudAppId'] == null ? null : (map['springCloudAppId']! as String).input(),
    );
  }
}

