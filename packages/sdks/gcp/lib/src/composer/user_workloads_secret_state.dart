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
    pulumi.Output<Map<String, String>>? data,
    pulumi.Output<String>? environment,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      data = pulumi.Input.asOptionalInput<Map<String, String>>(data),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      data: map['data'] == null ? null : pulumi.Output.create<Map<String, String>>((map['data'] as Map).cast<String, String>()),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

