// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_composer_user_workloads_config_map_user_workloads_config_map_args_doc}
/// The set of arguments for UserWorkloadsConfigMap.
/// {@endtemplate}
/// {@macro pulumi_composer_user_workloads_config_map_user_workloads_config_map_args_doc}
class UserWorkloadsConfigMapArgs {
  /// The "data" field of Kubernetes ConfigMap, organized in key-value pairs.
  /// For details see: https://kubernetes.io/docs/concepts/configuration/configmap/
  final pulumi.Input<Map<String, String>>? data;
  /// Environment where the Kubernetes ConfigMap will be stored and used.
  final pulumi.Input<String> environment;
  /// Name of the Kubernetes ConfigMap.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The location or Compute Engine region for the environment.
  final pulumi.Input<String>? region;

  /// Creates a new [UserWorkloadsConfigMapArgs].
  /// [data] The "data" field of Kubernetes ConfigMap, organized in key-value pairs.
  /// [environment] Environment where the Kubernetes ConfigMap will be stored and used.
  /// [name] Name of the Kubernetes ConfigMap.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location or Compute Engine region for the environment.
  UserWorkloadsConfigMapArgs({
    this.data,
    required this.environment,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'environment': environment,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory UserWorkloadsConfigMapArgs.fromMap(Map<String, dynamic> map) {
    return UserWorkloadsConfigMapArgs(
      data: map['data'] == null ? null : ((map['data']! as Map).cast<String, String>()).input(),
      environment: (map['environment'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

