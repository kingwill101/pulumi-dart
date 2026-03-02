// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_variable_object_variable_object_args_doc}
/// The set of arguments for VariableObject.
/// {@endtemplate}
/// {@macro pulumi_automation_variable_object_variable_object_args_doc}
class VariableObjectArgs {
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
  /// The value of the Automation Variable as a `jsonencode()` string.
  final pulumi.Input<String>? value;

  /// Creates a new [VariableObjectArgs].
  /// [automationAccountName] The name of the automation account in which the Variable is created. Changing this forces a new resource to be created.
  /// [description] The description of the Automation Variable.
  /// [encrypted] Specifies if the Automation Variable is encrypted. Defaults to `false`.
  /// [name] The name of the Automation Variable. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created.
  /// [value] The value of the Automation Variable as a `jsonencode()` string.
  VariableObjectArgs({
    required this.automationAccountName,
    this.description,
    this.encrypted,
    this.name,
    required this.resourceGroupName,
    this.value,
  });

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

  factory VariableObjectArgs.fromMap(Map<String, dynamic> map) {
    return VariableObjectArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

