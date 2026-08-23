// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_composer_user_workloads_secret_user_workloads_secret_args_doc}
/// The set of arguments for UserWorkloadsSecret.
/// {@endtemplate}
/// {@macro pulumi_composer_user_workloads_secret_user_workloads_secret_args_doc}
class UserWorkloadsSecretArgs {
  /// The "data" field of Kubernetes Secret, organized in key-value pairs,
  /// which can contain sensitive values such as a password, a token, or a key.
  /// Content of this field will not be displayed in CLI output,
  /// but it will be stored in terraform state file. To protect sensitive data,
  /// follow the best practices outlined in the HashiCorp documentation:
  /// https://developer.hashicorp.com/terraform/language/state/sensitive-data.
  /// The values for all keys have to be base64-encoded strings.
  /// For details see: https://kubernetes.io/docs/concepts/configuration/secret/
  final pulumi.Input<Map<String, String>>? data;
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Environment where the Kubernetes Secret will be stored and used.
  final pulumi.Input<String> environment;
  /// Name of the Kubernetes Secret.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The location or Compute Engine region for the environment.
  final pulumi.Input<String>? region;

  /// Creates a new [UserWorkloadsSecretArgs].
  /// [data] The "data" field of Kubernetes Secret, organized in key-value pairs,
  /// [deletionPolicy] (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [environment] Environment where the Kubernetes Secret will be stored and used.
  /// [name] Name of the Kubernetes Secret.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location or Compute Engine region for the environment.
  const UserWorkloadsSecretArgs({
    this.data,
    this.deletionPolicy,
    required this.environment,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'deletionPolicy': ?deletionPolicy,
      'environment': environment,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory UserWorkloadsSecretArgs.fromMap(Map<String, dynamic> map) {
    return UserWorkloadsSecretArgs(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
