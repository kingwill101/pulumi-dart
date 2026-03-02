// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_composer_get_user_workloads_secret_get_user_workloads_secret_args_doc}
/// Arguments for getUserWorkloadsSecret.
/// {@endtemplate}
/// {@macro pulumi_composer_get_user_workloads_secret_get_user_workloads_secret_args_doc}
class GetUserWorkloadsSecretArgs {
  /// Environment where the Secret is stored.
  final pulumi.Input<String> environment;
  /// Name of the Secret.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The location or Compute Engine region of the environment.
  final pulumi.Input<String>? region;

  /// Creates a new [GetUserWorkloadsSecretArgs].
  /// [environment] Environment where the Secret is stored.
  /// [name] Name of the Secret.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location or Compute Engine region of the environment.
  GetUserWorkloadsSecretArgs({
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

  factory GetUserWorkloadsSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetUserWorkloadsSecretArgs(
      environment: (map['environment'] as String).input(),
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

