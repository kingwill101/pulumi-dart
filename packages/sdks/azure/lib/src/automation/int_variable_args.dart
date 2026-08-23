// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_int_variable_int_variable_args_doc}
/// The set of arguments for IntVariable.
/// {@endtemplate}
/// {@macro pulumi_automation_int_variable_int_variable_args_doc}
class IntVariableArgs {
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
  /// The value of the Automation Variable as a `integer`.
  final pulumi.Input<int>? value;

  /// Creates a new [IntVariableArgs].
  /// [automationAccountName] The name of the automation account in which the Variable is created. Changing this forces a new resource to be created.
  /// [description] The description of the Automation Variable.
  /// [encrypted] Specifies if the Automation Variable is encrypted. Defaults to `false`.
  /// [name] The name of the Automation Variable. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created.
  /// [value] The value of the Automation Variable as a `integer`.
  const IntVariableArgs({
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

  factory IntVariableArgs.fromMap(Map<String, dynamic> map) {
    return IntVariableArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
