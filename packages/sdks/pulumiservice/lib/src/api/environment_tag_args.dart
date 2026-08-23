// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_esc_environment_tag_args_doc}
/// The set of arguments for EnvironmentTag.
/// {@endtemplate}
/// {@macro pulumi_api_esc_environment_tag_args_doc}
class EnvironmentTagArgs {
  /// The environment name
  final pulumi.Input<String> envName;
  /// The name
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name
  final pulumi.Input<String> projectName;
  /// The value
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentTagArgs].
  /// [envName] The environment name
  /// [name] The name
  /// [orgName] The organization name
  /// [projectName] The project name
  /// [value] The value
  const EnvironmentTagArgs({
    required this.envName,
    required this.name,
    required this.orgName,
    required this.projectName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envName': envName,
      'name': name,
      'orgName': orgName,
      'projectName': projectName,
      'value': value,
    };
  }

  factory EnvironmentTagArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentTagArgs(
      envName: pulumi.Input.fromValue(map['envName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
