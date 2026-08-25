// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_variable_variable_args_doc}
/// The set of arguments for Variable.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_variable_variable_args_doc}
class VariableArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The name of the variable to manage. Note that variable
  /// names can be hierarchical using slashes (e.g. "prod-variables/hostname").
  final pulumi.Input<String?>? name;
  /// The name of the RuntimeConfig resource containing this
  /// variable.
  final pulumi.Input<String> parent;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// or `value` - (Required) The content to associate with the variable.
  /// Exactly one of `text` or `variable` must be specified. If `text` is specified,
  /// it must be a valid UTF-8 string and less than 4096 bytes in length. If `value`
  /// is specified, it must be base64 encoded and less than 4096 bytes in length.
  ///
  /// - - -
  final pulumi.Input<String?>? text;
  final pulumi.Input<String?>? value;

  /// Creates a new [VariableArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [name] The name of the variable to manage. Note that variable
  /// [parent] The name of the RuntimeConfig resource containing this
  /// [project] The ID of the project in which the resource belongs. If it
  /// [text] or `value` - (Required) The content to associate with the variable.
  /// [value] Optional.
  const VariableArgs({
    this.deletionPolicy,
    this.name,
    required this.parent,
    this.project,
    this.text,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'parent': parent,
      'project': ?project,
      'text': ?text,
      'value': ?value,
    };
  }

  factory VariableArgs.fromMap(Map<String, dynamic> map) {
    return VariableArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
