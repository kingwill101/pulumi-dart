// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_composer_get_user_workloads_config_map_get_user_workloads_config_map_args_doc}
/// Arguments for getUserWorkloadsConfigMap.
/// {@endtemplate}
/// {@macro pulumi_composer_get_user_workloads_config_map_get_user_workloads_config_map_args_doc}
class GetUserWorkloadsConfigMapArgs {
  /// Environment where the ConfigMap is stored.
  final pulumi.Input<String> environment;
  /// Name of the ConfigMap.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The location or Compute Engine region of the environment.
  final pulumi.Input<String>? region;

  /// Creates a new [GetUserWorkloadsConfigMapArgs].
  /// [environment] Environment where the ConfigMap is stored.
  /// [name] Name of the ConfigMap.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location or Compute Engine region of the environment.
  GetUserWorkloadsConfigMapArgs({
    required this.environment,
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetUserWorkloadsConfigMapArgs.fromMap(Map<String, dynamic> map) {
    return GetUserWorkloadsConfigMapArgs(
      environment: pulumi.Input.fromValue(map['environment'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

