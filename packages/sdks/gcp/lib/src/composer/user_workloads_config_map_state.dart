// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserWorkloadsConfigMap resources.
class UserWorkloadsConfigMapState {
  /// The "data" field of Kubernetes ConfigMap, organized in key-value pairs.
  /// For details see: https://kubernetes.io/docs/concepts/configuration/configmap/
  final pulumi.Input<Map<String, String>?>? data;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Environment where the Kubernetes ConfigMap will be stored and used.
  final pulumi.Input<String?>? environment;
  /// Name of the Kubernetes ConfigMap.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The location or Compute Engine region for the environment.
  final pulumi.Input<String?>? region;

  /// Creates a new [UserWorkloadsConfigMapState].
  /// [data] The "data" field of Kubernetes ConfigMap, organized in key-value pairs.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [environment] Environment where the Kubernetes ConfigMap will be stored and used.
  /// [name] Name of the Kubernetes ConfigMap.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location or Compute Engine region for the environment.
  const UserWorkloadsConfigMapState({
    this.data,
    this.deletionPolicy,
    this.environment,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'deletionPolicy': ?deletionPolicy,
      'environment': ?environment,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory UserWorkloadsConfigMapState.fromMap(Map<String, dynamic> map) {
    return UserWorkloadsConfigMapState(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
