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
    required pulumi.Output<String> name,
    required pulumi.Output<String> organization,
    pulumi.Output<String>? project,
    required pulumi.Output<dynamic> yaml,
  }) :
      name = pulumi.Input.asInput<String>(name),
      organization = pulumi.Input.asInput<String>(organization),
      project = pulumi.Input.asOptionalInput<String>(project),
      yaml = pulumi.Input.asInput<dynamic>(yaml);

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
      name: pulumi.Output.create<String>(map['name'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      yaml: pulumi.Output.create<dynamic>(map['yaml']),
    );
  }
}

