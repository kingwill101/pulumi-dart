// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_environment_args_doc}
/// Arguments for getEnvironment.
/// {@endtemplate}
/// {@macro pulumi_index_get_environment_args_doc}
class GetEnvironmentArgs {
  /// The environment name.
  final pulumi.Input<String> name;
  /// The Pulumi Cloud organization that owns the environment.
  final pulumi.Input<String> organizationName;
  /// The ESC project name. Defaults to `default`.
  final pulumi.Input<String>? projectName;

  /// Creates a new [GetEnvironmentArgs].
  /// [name] The environment name.
  /// [organizationName] The Pulumi Cloud organization that owns the environment.
  /// [projectName] The ESC project name. Defaults to `default`.
  const GetEnvironmentArgs({
    required this.name,
    required this.organizationName,
    this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'organizationName': organizationName,
      'projectName': ?projectName,
    };
  }

  factory GetEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
