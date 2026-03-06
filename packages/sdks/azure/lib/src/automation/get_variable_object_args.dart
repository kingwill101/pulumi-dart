// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_variable_object_get_variable_object_args_doc}
/// Arguments for getVariableObject.
/// {@endtemplate}
/// {@macro pulumi_automation_get_variable_object_get_variable_object_args_doc}
class GetVariableObjectArgs {
  /// The name of the automation account in which the Automation Variable exists.
  final pulumi.Input<String> automationAccountName;
  /// The name of the Automation Variable.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the automation account exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVariableObjectArgs].
  /// [automationAccountName] The name of the automation account in which the Automation Variable exists.
  /// [name] The name of the Automation Variable.
  /// [resourceGroupName] The Name of the Resource Group where the automation account exists.
  const GetVariableObjectArgs({
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

  factory GetVariableObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableObjectArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

