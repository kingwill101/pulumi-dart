// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_string_variable_string_variable_args_doc}
/// The set of arguments for StringVariable.
/// {@endtemplate}
/// {@macro pulumi_automation_string_variable_string_variable_args_doc}
class StringVariableArgs {
  /// The name of the automation account in which the Variable is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The description of the Automation Variable.
  final pulumi.Input<String>? description;
  /// Specifies if the Automation Variable is encrypted. Defaults to `false`.
  final pulumi.Input<bool>? encrypted;
  /// The name of the Automation Variable. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The value of the Automation Variable as a `string`.
  final pulumi.Input<String>? value;

  /// Creates a new [StringVariableArgs].
  /// [automationAccountName] The name of the automation account in which the Variable is created. Changing this forces a new resource to be created.
  /// [description] The description of the Automation Variable.
  /// [encrypted] Specifies if the Automation Variable is encrypted. Defaults to `false`.
  /// [name] The name of the Automation Variable. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created.
  /// [value] The value of the Automation Variable as a `string`.
  StringVariableArgs({
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? value,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      description = pulumi.Input.asOptionalInput<String>(description),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'description': ?description,
      'encrypted': ?encrypted,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'value': ?value,
    };
  }

  factory StringVariableArgs.fromMap(Map<String, dynamic> map) {
    return StringVariableArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

