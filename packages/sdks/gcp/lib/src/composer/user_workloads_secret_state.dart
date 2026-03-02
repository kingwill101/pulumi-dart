// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserWorkloadsSecret resources.
class UserWorkloadsSecretState {
  /// A map of the secret data.
  final pulumi.Input<Map<String, String>>? data;
  /// Environment where the Kubernetes Secret will be stored and used.
  final pulumi.Input<String>? environment;
  /// Name of the Kubernetes Secret.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The location or Compute Engine region for the environment.
  final pulumi.Input<String>? region;

  /// Creates a new [UserWorkloadsSecretState].
  /// [data] A map of the secret data.
  /// [environment] Environment where the Kubernetes Secret will be stored and used.
  /// [name] Name of the Kubernetes Secret.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location or Compute Engine region for the environment.
  UserWorkloadsSecretState({
    this.data,
    this.environment,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'environment': ?environment,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory UserWorkloadsSecretState.fromMap(Map<String, dynamic> map) {
    return UserWorkloadsSecretState(
      data: map['data'] == null ? null : ((map['data']! as Map).cast<String, String>()).input(),
      environment: map['environment'] == null ? null : (map['environment']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

