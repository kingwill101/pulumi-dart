// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_int_variable_get_int_variable_args_doc}
/// Arguments for getIntVariable.
/// {@endtemplate}
/// {@macro pulumi_automation_get_int_variable_get_int_variable_args_doc}
class GetIntVariableArgs {
  /// The name of the automation account in which the Automation Variable exists.
  final pulumi.Input<String> automationAccountName;
  /// The name of the Automation Variable.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the automation account exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntVariableArgs].
  /// [automationAccountName] The name of the automation account in which the Automation Variable exists.
  /// [name] The name of the Automation Variable.
  /// [resourceGroupName] The Name of the Resource Group where the automation account exists.
  const GetIntVariableArgs({
    required this.automationAccountName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntVariableArgs.fromMap(Map<String, dynamic> map) {
    return GetIntVariableArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
