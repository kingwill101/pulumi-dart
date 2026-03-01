// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_config_config_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_config_config_args_doc}
class ConfigArgs {
  /// The description to associate with the runtime
  /// config.
  final pulumi.Input<String>? description;
  /// The name of the runtime config.
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ConfigArgs].
  /// [description] The description to associate with the runtime
  /// [name] The name of the runtime config.
  /// [project] The ID of the project in which the resource belongs. If it
  ConfigArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

