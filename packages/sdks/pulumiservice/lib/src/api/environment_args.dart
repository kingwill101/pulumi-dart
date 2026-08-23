// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_esc_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_api_esc_environment_args_doc}
class EnvironmentArgs {
  /// The name of the environment.
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name for the environment.
  final pulumi.Input<String> project;
  /// Raw YAML body content.
  final pulumi.Input<String>? yaml;

  /// Creates a new [EnvironmentArgs].
  /// [name] The name of the environment.
  /// [orgName] The organization name
  /// [project] The project name for the environment.
  /// [yaml] Raw YAML body content.
  const EnvironmentArgs({
    required this.name,
    required this.orgName,
    required this.project,
    this.yaml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'orgName': orgName,
      'project': project,
      'yaml': ?yaml,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      yaml: (() { final guardedValue = map['yaml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
