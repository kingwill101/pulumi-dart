// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_config_config_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_config_config_args_doc}
class ConfigArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description to associate with the runtime
  /// config.
  final pulumi.Input<String?>? description;
  /// The name of the runtime config.
  ///
  /// - - -
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [ConfigArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] The description to associate with the runtime
  /// [name] The name of the runtime config.
  /// [project] The ID of the project in which the resource belongs. If it
  const ConfigArgs({
    this.deletionPolicy,
    this.description,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
