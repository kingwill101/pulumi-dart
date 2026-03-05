// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_index_environment_args_doc}
class EnvironmentArgs {
  /// Environment name.
  final pulumi.Input<String> name;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Project name.
  final pulumi.Input<String>? project;
  /// Environment's yaml file.
  final pulumi.Input<dynamic> yaml;

  /// Creates a new [EnvironmentArgs].
  /// [name] Environment name.
  /// [organization] Organization name.
  /// [project] Project name.
  /// [yaml] Environment's yaml file.
  EnvironmentArgs({
    required this.name,
    required this.organization,
    this.project,
    required this.yaml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'organization': organization,
      'project': ?project,
      'yaml': yaml,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      yaml: pulumi.Input.fromValue(map['yaml']),
    );
  }
}

